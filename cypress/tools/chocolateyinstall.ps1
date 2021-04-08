$ErrorActionPreference = 'Stop'
$toolsPath  = Split-Path $MyInvocation.MyCommand.Definition
$url32      = 'https://cdn.cypress.io/desktop/7.0.1/win32-ia32/cypress.zip'
$checksum32 = '971fd31de868d94de238ac4189d03b0f2613fff1220025454cca33de841d072e'
$url64      = 'https://cdn.cypress.io/desktop/7.0.1/win32-x64/cypress.zip'
$checksum64 = 'f3b4e8a77e04bd9ef5158269d70c5af2bd3fc4bb808d244ef38e937741b54e9f'

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
