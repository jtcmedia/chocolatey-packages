$ErrorActionPreference = 'Stop'
$toolsPath  = Split-Path $MyInvocation.MyCommand.Definition
#$megaURL    = ''
$url64 = 'https://github.com/AaronFeng753/Waifu2x-Extension-GUI/releases/download/v3.99.01/Waifu2x-Extension-GUI-v3.99.01-Win64.7z'
$checksum64 = '66f1d4bbd2fc033fa4ef5a4819cb2ff0ca1373afd8b5c672c8d726bef7dc22ca'

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
