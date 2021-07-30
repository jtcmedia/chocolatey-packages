$ErrorActionPreference = 'Stop'
$toolsPath  = Split-Path $MyInvocation.MyCommand.Definition
$url32      = 'https://cdn.cypress.io/desktop/8.1.0/win32-ia32/cypress.zip'
$checksum32 = '046cceced5da0005e4f21c67cdc0272d2ae20c1a5efbaab3da38b474a4baffe0'
$url64      = 'https://cdn.cypress.io/desktop/8.1.0/win32-x64/cypress.zip'
$checksum64 = '8aeca2e56780bb89204eb3c7ca0ff4a4c5da00e6ff780e660580bfbd57b78add'

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
