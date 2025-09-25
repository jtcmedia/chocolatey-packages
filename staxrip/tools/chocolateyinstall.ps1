$ErrorActionPreference = 'Stop'
$toolsPath  = Split-Path $MyInvocation.MyCommand.Definition
$url64      = 'https://github.com/staxrip/staxrip/releases/download/v2.50.2/StaxRip-v2.50.2-x64.7z'
$checksum64 = '1580fb5bad26849c68dae027d9bb7853698468ab4d31ccde9008d743a153df88'

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
