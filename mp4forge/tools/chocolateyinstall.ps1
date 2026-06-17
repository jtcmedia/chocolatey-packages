$ErrorActionPreference = 'Stop'

$toolsPath = Split-Path $MyInvocation.MyCommand.Definition

$packageArgs = @{
  PackageName     = $env:ChocolateyPackageName
  FileFullPath    = gi $toolsPath\*.zip
  Destination     = $toolsPath
}

ls $toolsPath\* | ? { $_.PSISContainer } | rm -Recurse -Force #remove older package dirs
Get-ChocolateyUnzip @packageArgs

$pp = Get-PackageParameters
if (-Not $pp.NoDesktopIcon) {
  $desktopPath = [Environment]::GetFolderPath("Desktop")
  Install-ChocolateyShortcut `
    -ShortcutFilePath "$desktopPath\mp4forge.lnk" `
    -TargetPath "$env:ChocolateyInstall\bin\mp4forge.exe"
}

rm $toolsPath\*.zip -ea 0