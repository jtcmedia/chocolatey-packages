$ErrorActionPreference = 'Stop'
$toolsPath  = Split-Path $MyInvocation.MyCommand.Definition
$megaURL    = ''
$checksum64 = 'afea19768d3f74f8ec049bb3ce26108be3a49e6f167caf1383b6f14e4e04d8a3'

megatools.exe dl --path $toolsPath $megaURL

$fileFullPath = gi $toolsPath\*.7z

Get-ChecksumValid -File $fileFullPath -Checksum $checksum64 -ChecksumType 'sha256'

$packageArgs = @{
  PackageName     = $env:ChocolateyPackageName
  FileFullPath64  = $fileFullPath
  Destination     = $toolsPath
}

Get-ChocolateyUnzip @packageArgs

$files = Get-ChildItem $toolsPath -Include *.exe -Recurse

foreach ($file in $files) {
  if (!($file.Name.Equals("Waifu2x-Extension-GUI-Launcher.exe"))) {
    #generate an ignore file
    New-Item "$file.ignore" -type file -Force | Out-Null
  }
  else {
    New-Item "$file.gui" -type file -Force | Out-Null
  }
}

$pp = Get-PackageParameters

if (!($pp.NOICON)) {
  $desktopPath = [Environment]::GetFolderPath("Desktop")

  Install-ChocolateyShortcut `
    -ShortcutFilePath "$desktopPath\Waifu2x-Extension-GUI.lnk" `
    -TargetPath "$env:ChocolateyInstall\bin\Waifu2x-Extension-GUI-Launcher.exe" `
    -WorkingDirectory "$toolsPath"
}

Remove-Item $toolsPath\*.7z -ea 0
