$ErrorActionPreference = 'Stop'
$toolsPath  = Split-Path $MyInvocation.MyCommand.Definition
$url64      = 'https://github.com/staxrip/staxrip/releases/download/v2.19.0/StaxRip-v2.19.0-x64.7z'
$checksum64 = '65a899860457ebfb3935800d874354c2f6fdb2cd27a2228c9d97c36eff92d453'

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
