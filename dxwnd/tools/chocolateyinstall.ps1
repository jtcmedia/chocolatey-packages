﻿$ErrorActionPreference = 'Stop'
$toolsPath  = Split-Path $MyInvocation.MyCommand.Definition
$url32      = 'https://sourceforge.net/projects/dxwnd/files/Latest%20build/v2_06_03_build.rar/download'
$checksum32 = '5d38d9f8b66b50ca4642a518e72258ee049b29796bcb41292e8bccfe906aec4b'

$unzipLocation = New-Item -Path $(Get-ToolsLocation) -Name "DxWnd" -ItemType "directory" -ErrorAction SilentlyContinue -Force


$packageArgs = @{
  PackageName     = $env:ChocolateyPackageName
  UnzipLocation   = $unzipLocation
  Url             = $url32
  Checksum        = $checksum32
  ChecksumType    = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

$desktopPath = [Environment]::GetFolderPath("Desktop")

Install-ChocolateyShortcut `
  -ShortcutFilePath "$desktopPath\DxWnd.lnk" `
  -TargetPath "$($packageArgs.UnzipLocation)\dxwnd.exe" `
  -WorkingDirectory $UnzipLocation

rm $toolsPath\*.rar -ea 0
