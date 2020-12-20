$ErrorActionPreference = 'Stop'
$toolsPath  = Split-Path $MyInvocation.MyCommand.Definition
$url32      = 'https://cdn.cypress.io/desktop/6.1.0/win32-ia32/cypress.zip'
$checksum32 = 'dafa19c6cc6ed6505e1b3cef381eec3d658d6457d5c9d2b1568a8a2a9d26cef0'
$url64      = 'https://cdn.cypress.io/desktop/6.1.0/win32-x64/cypress.zip'
$checksum64 = 'f72cb5458531850930652b2a66a78d955ecccef9d5bd2c39de15149ae933d708'

$localAppData = [Environment]::GetFolderPath("LocalApplicationData")

$packageArgs = @{
  PackageName     = $env:ChocolateyPackageName
  UnzipLocation   = $localAppData
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
  -TargetPath "$localAppData\Cypress\Cypress.exe"

rm $toolsPath\*.zip -ea 0
