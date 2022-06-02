$ErrorActionPreference = 'Stop'
$toolsPath  = Split-Path $MyInvocation.MyCommand.Definition
$url32      = 'https://sourceforge.net/projects/dxwnd/files/Latest%20build/v2_05_84_build.rar/download'
$checksum32 = 'f35ab8c713a7786e675fca90e2bd64d8e75d87a0f8f2bbefa3fa59cfbcbe52ea'

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
