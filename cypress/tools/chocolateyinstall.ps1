$ErrorActionPreference = 'Stop'
$toolsPath  = Split-Path $MyInvocation.MyCommand.Definition
$url64      = 'https://cdn.cypress.io/desktop/11.0.0/win32-x64/cypress.zip'
$checksum64 = 'fd462d929d36137bad55e5abd7ec6a3d3f1e40054a3d8b09f469b38e73457058'

$packageArgs = @{
  PackageName     = $env:ChocolateyPackageName
  UnzipLocation   = $(Get-ToolsLocation)
  Url64bit        = $url64
  Checksum64      = $checksum64
  ChecksumType64  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

$desktopPath = [Environment]::GetFolderPath("Desktop")

Install-ChocolateyShortcut `
  -ShortcutFilePath "$desktopPath\Cypress.lnk" `
  -TargetPath "$($packageArgs.UnzipLocation)\Cypress\Cypress.exe"

rm $toolsPath\*.zip -ea 0
