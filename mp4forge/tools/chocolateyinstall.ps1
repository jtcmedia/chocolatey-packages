$ErrorActionPreference = 'Stop'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition

$packageArgs = @{
  PackageName     = $env:ChocolateyPackageName
  FileFullPath64  = gi $toolsPath\*.zip
  Destination     = $(Get-ToolsLocation)
}

Get-ChocolateyUnzip @packageArgs

$pp = Get-PackageParameters
if (-Not $pp.NoDesktopIcon) {
  $desktopPath = [Environment]::GetFolderPath("Desktop")
  Install-ChocolateyShortcut `
    -ShortcutFilePath "$desktopPath\mp4forge.lnk" `
    -TargetPath "$($packageArgs.Destination)\MP4Forge\mp4forge.exe"
}

rm $toolsPath\*.zip -ea 0