$ErrorActionPreference = 'Stop'
$toolsPath  = Split-Path $MyInvocation.MyCommand.Definition
$url64      = 'https://github.com/staxrip/staxrip/releases/download/2.0.8.0/StaxRip-x64-2.0.8.0-stable.7z'
$checksum64 = 'bc14bc42c86c81201efdf006a1bec0bf557edd76c72d468575a2c4996e34f48b'

$packageArgs = @{
  PackageName     = $env:ChocolateyPackageName
  UnzipLocation   = $toolsPath
  Url64bit        = $url64
  Checksum64      = $checksum64
  ChecksumType64  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

$desktopPath = [Environment]::GetFolderPath("Desktop")

Install-ChocolateyShortcut `
  -ShortcutFilePath "$desktopPath\StaxRip.lnk" `
  -TargetPath "$env:ChocolateyInstall\bin\StaxRip.exe"

rm $toolsPath\*.7z -ea 0
