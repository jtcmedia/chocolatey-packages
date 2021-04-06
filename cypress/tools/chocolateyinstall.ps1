$ErrorActionPreference = 'Stop'
$toolsPath  = Split-Path $MyInvocation.MyCommand.Definition
$url32      = 'https://cdn.cypress.io/desktop/7.0.0/win32-ia32/cypress.zip'
$checksum32 = 'a9da0cda864b5c0d11bdae0d232f3ce6a6ea19ab1e447811549736fb8e06d79e'
$url64      = 'https://cdn.cypress.io/desktop/7.0.0/win32-x64/cypress.zip'
$checksum64 = 'fc40ebf28cb3e0cb71f4b66bd4b659a30b01899fcbde3e7ac8d11866de357960'

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
