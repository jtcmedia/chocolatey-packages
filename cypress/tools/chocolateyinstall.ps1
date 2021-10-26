$ErrorActionPreference = 'Stop'
$toolsPath  = Split-Path $MyInvocation.MyCommand.Definition
$url32      = 'https://cdn.cypress.io/desktop/8.7.0/win32-ia32/cypress.zip'
$checksum32 = '490f18e1e1f276ea76fc004f072b13434e6878216cd0fedbb01c97bf11e4a817'
$url64      = 'https://cdn.cypress.io/desktop/8.7.0/win32-x64/cypress.zip'
$checksum64 = '02e313b5f454b5887ef509ede2bc96f9c2915b35aa993191eebd3a2e2c48e935'

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
