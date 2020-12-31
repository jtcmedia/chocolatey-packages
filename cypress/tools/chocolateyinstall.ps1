$ErrorActionPreference = 'Stop'
$toolsPath  = Split-Path $MyInvocation.MyCommand.Definition
$url32      = 'https://cdn.cypress.io/desktop/6.2.0/win32-ia32/cypress.zip'
$checksum32 = 'eaf9c4889ae86016090333cf5db0b6974665c6d052c318cc50ebbec3b0317061'
$url64      = 'https://cdn.cypress.io/desktop/6.2.0/win32-x64/cypress.zip'
$checksum64 = '7630daaf42ee08224906d9f4c4bacee7471f44e6714654330890b307af885cf5'

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
