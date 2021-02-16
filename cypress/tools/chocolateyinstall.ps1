$ErrorActionPreference = 'Stop'
$toolsPath  = Split-Path $MyInvocation.MyCommand.Definition
$url32      = 'https://cdn.cypress.io/desktop/6.5.0/win32-ia32/cypress.zip'
$checksum32 = '626fcd412b35feeb9d59bc1b3bd05e94a59d42ec5507d64132e58cf9d9e871d8'
$url64      = 'https://cdn.cypress.io/desktop/6.5.0/win32-x64/cypress.zip'
$checksum64 = '0b2bcf3a88b85ef45c260d69dee2a543e32236c3925ce060ee82196f2af0d0a5'

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
