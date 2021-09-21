$ErrorActionPreference = 'Stop'
$toolsPath  = Split-Path $MyInvocation.MyCommand.Definition
$url32      = 'https://cdn.cypress.io/desktop/8.4.1/win32-ia32/cypress.zip'
$checksum32 = 'e1c38efbfa200c43eca62cbedf9e4eb9df1377b09a7a0c804edf024912c74b5d'
$url64      = 'https://cdn.cypress.io/desktop/8.4.1/win32-x64/cypress.zip'
$checksum64 = 'df34c28e12ff5496c44f2e3dcff9cb7c7cef86efded278fd681efcf44180d8c1'

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
