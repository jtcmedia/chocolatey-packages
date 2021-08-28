$ErrorActionPreference = 'Stop'
$toolsPath  = Split-Path $MyInvocation.MyCommand.Definition
$url32      = 'https://cdn.cypress.io/desktop/8.3.1/win32-ia32/cypress.zip'
$checksum32 = '9d91bd4bb2d0f2a09a80cafb963f06e77f1f15819e9542ac7af912532a6115bb'
$url64      = 'https://cdn.cypress.io/desktop/8.3.1/win32-x64/cypress.zip'
$checksum64 = 'f26fb2e99cb2b606c5baa474cb2cdd1550137fb0acba15327a54af93d60280ae'

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
