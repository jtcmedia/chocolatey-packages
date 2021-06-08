$ErrorActionPreference = 'Stop'
$toolsPath  = Split-Path $MyInvocation.MyCommand.Definition
$url32      = 'https://cdn.cypress.io/desktop/7.5.0/win32-ia32/cypress.zip'
$checksum32 = '78f9082faeeecb91b91e67889b094c49693d5a2dc28f126d32d5fa7ce3c86a4f'
$url64      = 'https://cdn.cypress.io/desktop/7.5.0/win32-x64/cypress.zip'
$checksum64 = 'd778b208fddf2989f5f4f403fdc457e3c37669a0c68fdbfa761a485b0e997a15'

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
