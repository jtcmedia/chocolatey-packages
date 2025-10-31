$ErrorActionPreference = 'Stop'
$toolsPath  = Split-Path $MyInvocation.MyCommand.Definition
$url32      = 'https://sourceforge.net/projects/dxwnd/files/Latest%20build/v2_06_11_build.rar/download'
$checksum32 = '505f7f768c12e12fd8f58350285a73f5eedfd97673033fd10d295128733a5218'

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
