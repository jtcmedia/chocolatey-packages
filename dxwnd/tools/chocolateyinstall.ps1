$ErrorActionPreference = 'Stop'
$toolsPath  = Split-Path $MyInvocation.MyCommand.Definition
$url32      = 'https://sourceforge.net/projects/dxwnd/files/Latest%20build/v2_05_81_build.rar/download'
$checksum32 = '659c32a4cc0173c8d492ad396d4b95428df4d1960e451eefdedb41172e4cc68e'

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
