$ErrorActionPreference = 'Stop'
$toolsPath  = Split-Path $MyInvocation.MyCommand.Definition
$url32      = 'https://cdn.cypress.io/desktop/6.1.0/win32-ia32/cypress.zip'
$checksum32 = 'DAFA19C6CC6ED6505E1B3CEF381EEC3D658D6457D5C9D2B1568A8A2A9D26CEF0'
$url64      = 'https://cdn.cypress.io/desktop/6.1.0/win32-x64/cypress.zip'
$checksum64 = 'F72CB5458531850930652B2A66A78D955ECCCEF9D5BD2C39DE15149AE933D708'

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
