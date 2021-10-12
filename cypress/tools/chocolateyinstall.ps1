$ErrorActionPreference = 'Stop'
$toolsPath  = Split-Path $MyInvocation.MyCommand.Definition
$url32      = 'https://cdn.cypress.io/desktop/8.6.0/win32-ia32/cypress.zip'
$checksum32 = '9a3fa83e5a5e60675f21d73f0e07b4f11386a1570e2c5f7e46573d77a6fe5898'
$url64      = 'https://cdn.cypress.io/desktop/8.6.0/win32-x64/cypress.zip'
$checksum64 = '545b088a44f0796aa0fdff80b88d61008f6b3970f69a7b323a4c1fbe4361823e'

$packageArgs = @{
  PackageName     = $env:ChocolateyPackageName
  UnzipLocation   = $(Get-ToolsLocation)
  Url             = $url32
  Checksum        = $checksum32
  ChecksumType    = 'sha256'
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
