$ErrorActionPreference = 'Stop'
$toolsPath  = Split-Path $MyInvocation.MyCommand.Definition
$url64      = 'https://github.com/staxrip/staxrip/releases/download/v2.39.1/StaxRip-v2.39.1-x64.7z'
$checksum64 = '2fe29ea1b533125ea18be43679f9f83a1189743ac7e786b35417e1255d2707d5'

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
