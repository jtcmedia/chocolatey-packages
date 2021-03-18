$ErrorActionPreference = 'Stop'
$toolsPath  = Split-Path $MyInvocation.MyCommand.Definition
$url32      = 'https://cdn.cypress.io/desktop/6.8.0/win32-ia32/cypress.zip'
$checksum32 = '01618455e0f748aa1def172c747be003eae9975c5aef64267a7eb5b2108af118'
$url64      = 'https://cdn.cypress.io/desktop/6.8.0/win32-x64/cypress.zip'
$checksum64 = 'e988106c13b9d8cbdbd9983cfb732bdf00a3712be9a9c516b261078514919a34'

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
