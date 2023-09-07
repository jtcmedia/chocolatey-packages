$ErrorActionPreference = 'Stop'
$toolsPath  = Split-Path $MyInvocation.MyCommand.Definition
$url64      = 'https://github.com/staxrip/staxrip/releases/download/v2.29.0/StaxRip-v2.29.0-x64.7z'
$checksum64 = '521fcbeb2a16edece1d324bb68acc3208e378d1d26db604b3b7b1f87de500c50'

$unzipLocation = New-Item -Path $(Get-ToolsLocation) -Name "StaxRip" -ItemType "directory" -ErrorAction SilentlyContinue -Force

$packageArgs = @{
  PackageName     = $env:ChocolateyPackageName
  UnzipLocation   = $unzipLocation
  Url64bit        = $url64
  Checksum64      = $checksum64
  ChecksumType64  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

$desktopPath = [Environment]::GetFolderPath("Desktop")

$subFolder = $url64 -split '/|\.7z' | select -Last 1 -Skip 1

Install-ChocolateyShortcut `
  -ShortcutFilePath "$desktopPath\StaxRip.lnk" `
  -TargetPath "$unzipLocation\$subFolder\StaxRip.exe"

rm $toolsPath\*.7z -ea 0
