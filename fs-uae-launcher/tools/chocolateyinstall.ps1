$ErrorActionPreference = 'Stop'
$toolsPath  = Split-Path $MyInvocation.MyCommand.Definition


$packageArgs = @{
  PackageName     = $env:ChocolateyPackageName
  FileFullPath64  = gi $toolsPath\*.zip
  Destination     = $(Get-ToolsLocation)
}

Get-ChocolateyUnzip @packageArgs

$pp = Get-PackageParameters

if (!($pp.NOICON)) {
  $desktopPath = [Environment]::GetFolderPath("Desktop")

  Install-ChocolateyShortcut `
    -ShortcutFilePath "$desktopPath\FS-UAE Launcher.lnk" `
    -TargetPath "$($packageArgs.Destination)\FS-UAE-Launcher\Windows\x86-64\fs-uae-launcher.exe"
}

rm $toolsPath\*.zip -ea 0
