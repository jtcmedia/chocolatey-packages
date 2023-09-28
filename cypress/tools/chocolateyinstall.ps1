$ErrorActionPreference = 'Stop'
$toolsPath  = Split-Path $MyInvocation.MyCommand.Definition
$url64      = 'https://cdn.cypress.io/desktop/13.3.0/win32-x64/cypress.zip'
$checksum64 = '3fc9c66642106ccb5726fa47e7c30607124685a2832dbb56f7bbb6a0d54b21f0'

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
