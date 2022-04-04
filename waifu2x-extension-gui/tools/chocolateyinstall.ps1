$ErrorActionPreference = 'Stop'
$toolsPath  = Split-Path $MyInvocation.MyCommand.Definition
#$megaURL    = ''
$url64 = 'https://github.com/AaronFeng753/Waifu2x-Extension-GUI/releases/download/v3.89.01/Update-W2xEX-v3.89.01-FROM-v3.88.01.7z'
$checksum64 = 'f8358a373358dabba6768f39eb5f93efde678c83ed5e7612b20fcaaaf46e0a7b'

# megatools.exe dl --path $toolsPath $megaURL

$fileFullPath = gi $toolsPath\*.7z

# Get-ChecksumValid -File $fileFullPath -Checksum $checksum64 -ChecksumType 'sha256'

# $packageArgs = @{
#   PackageName     = $env:ChocolateyPackageName
#   FileFullPath64  = $fileFullPath
#   Destination     = $toolsPath
# }

#Get-ChocolateyUnzip @packageArgs

$packageArgs = @{
  PackageName     = $env:ChocolateyPackageName
  UnzipLocation   = $toolsPath
  Url64bit        = $url64
  Checksum64      = $checksum64
  ChecksumType64  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

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
