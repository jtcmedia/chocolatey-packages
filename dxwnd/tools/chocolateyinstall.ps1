$ErrorActionPreference = 'Stop'
$toolsPath  = Split-Path $MyInvocation.MyCommand.Definition
$url32      = 'https://sourceforge.net/projects/dxwnd/files/Latest%20build/v2_06_08_build.rar/download'
$checksum32 = '18aef3da58160f36d103bd066fa1ac2ae22de84718e4f832bc4abdbb3b185ba5'

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
