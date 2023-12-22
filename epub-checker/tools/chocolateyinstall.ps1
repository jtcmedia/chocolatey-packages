$ErrorActionPreference = 'Stop'
$toolsPath  = Split-Path $MyInvocation.MyCommand.Definition

$pp = Get-PackageParameters

if (!($pp.NOICON)) {
  $desktopPath = [Environment]::GetFolderPath("Desktop")

  Install-ChocolateyShortcut `
    -ShortcutFilePath "$desktopPath\EPUB-Checker.lnk" `
    -TargetPath "$env:ChocolateyInstall\bin\EPUB-Checker.exe" `
    -WorkingDirectory "$toolsPath"
}
