$ErrorActionPreference = 'Stop'
$toolsPath  = Split-Path $MyInvocation.MyCommand.Definition
$url64      = 'https://github.com/staxrip/staxrip/releases/download/v2.41.6/StaxRip-v2.41.6-x64.7z'
$checksum64 = '7bdfc7e74a34e90019fe0c80bcaa0db3e791b00d0d09dc4481b901e39a6cc91b'

$unzipLocation = New-Item -Path $(Get-ToolsLocation) -Name "StaxRip" -ItemType "directory" -ErrorAction SilentlyContinue -Force

$packageArgs = @{
  PackageName     = $env:ChocolateyPackageName
  UnzipLocation   = $unzipLocation
  Url64bit        = $url64
  Checksum64      = $checksum64
  ChecksumType64  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

$subFolder = $url64 -split '/|\.7z' | select -Last 1 -Skip 1

Install-BinFile `
  -Name $env:ChocolateyPackageName `
  -Path "$unzipLocation\$subFolder\StaxRip.exe"

$pp = Get-PackageParameters
if (!($pp.NOICON)) {
  $desktopPath = [Environment]::GetFolderPath("Desktop")

  Install-ChocolateyShortcut `
    -ShortcutFilePath "$desktopPath\StaxRip.lnk" `
    -TargetPath "$($env:ChocolateyInstall)\bin\staxrip.exe"
}

rm $toolsPath\*.7z -ea 0
