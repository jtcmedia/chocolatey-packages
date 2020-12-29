$ErrorActionPreference = 'Stop'
$toolsPath  = Split-Path $MyInvocation.MyCommand.Definition
$url64      = 'https://github.com/staxrip/staxrip/releases/download/2.1.3.0/StaxRip-x64-2.1.3.0-stable.7z'
$checksum64 = '8c4b4cd20962053fbad19cff5716ef9aa402b9d816a9bf29aa94ba4108bfb5b8'

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

Install-ChocolateyShortcut `
  -ShortcutFilePath "$desktopPath\StaxRip.lnk" `
  -TargetPath "$unzipLocation\StaxRip.exe"

rm $toolsPath\*.7z -ea 0
