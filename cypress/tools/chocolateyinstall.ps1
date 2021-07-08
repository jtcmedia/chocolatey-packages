$ErrorActionPreference = 'Stop'
$toolsPath  = Split-Path $MyInvocation.MyCommand.Definition
$url32      = 'https://cdn.cypress.io/desktop/7.7.0/win32-ia32/cypress.zip'
$checksum32 = '3a63b89d9fa9dc1c5b9a85abc275faa792945b20231f155eed1dd27209ec98ce'
$url64      = 'https://cdn.cypress.io/desktop/7.7.0/win32-x64/cypress.zip'
$checksum64 = 'e4d98c9c8eb2f503b3c78c7fc08bad4e1a79ecdaeafbcf8b3211cc5dad9c8f05'

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
