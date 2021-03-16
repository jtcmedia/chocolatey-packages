$ErrorActionPreference = 'Stop'
$toolsPath  = Split-Path $MyInvocation.MyCommand.Definition
$url32      = 'https://cdn.cypress.io/desktop/6.7.1/win32-ia32/cypress.zip'
$checksum32 = '6042d06a9fb212cf40bac9895ea8018ef4c1d6c18b9047ef57163ab8410fe41c'
$url64      = 'https://cdn.cypress.io/desktop/6.7.1/win32-x64/cypress.zip'
$checksum64 = 'b82430fb6e35bda3fb4c01ca367cb0d2242bcea61c4d358eba95576f44b834d1'

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
