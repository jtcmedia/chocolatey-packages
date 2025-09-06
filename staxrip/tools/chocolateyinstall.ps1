$ErrorActionPreference = 'Stop'
$toolsPath  = Split-Path $MyInvocation.MyCommand.Definition
$url64      = 'https://github.com/staxrip/staxrip/releases/download/v2.50.0/StaxRip-v2.50.0-x64.7z'
$checksum64 = 'cb65a47b758941c3b9bf78a9b3b05c2b253d48f6c924df5e0bf0bc582a5b0c77'

$unzipLocation = New-Item -Path $(Get-ToolsLocation) -Name "StaxRip" -ItemType "directory" -ErrorAction SilentlyContinue -Force

$packageArgs = @{
  PackageName     = $env:ChocolateyPackageName
  UnzipLocation   = $unzipLocation
  Url64bit        = $url64
  Checksum64      = $checksum64
  ChecksumType64  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

$subFolder = $url64 -split '/|\.7z' | select -Last 1 -Skip 1 | % { $_.Replace('-REPACK', '') }

# Install-BinFile `
#   -Name $env:ChocolateyPackageName `
#   -Path "$unzipLocation\$subFolder\StaxRip.exe"

$pp = Get-PackageParameters
if (!($pp.NOICON)) {
  $desktopPath = [Environment]::GetFolderPath("Desktop")

  Install-ChocolateyShortcut `
    -ShortcutFilePath "$desktopPath\StaxRip.lnk" `
    -TargetPath "$unzipLocation\$subFolder\StaxRip.exe"
}

rm $toolsPath\*.7z -ea 0
