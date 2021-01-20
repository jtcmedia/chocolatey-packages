$ErrorActionPreference = 'Stop'
$toolsPath  = Split-Path $MyInvocation.MyCommand.Definition
$url32      = 'https://cdn.cypress.io/desktop/6.3.0/win32-ia32/cypress.zip'
$checksum32 = 'dee2614376946c7c3781f0cd272cc132e6a26a49808499e196ddcdc7628a386e'
$url64      = 'https://cdn.cypress.io/desktop/6.3.0/win32-x64/cypress.zip'
$checksum64 = '9b9fb275fd769a985307fe766139addfda26cba1b512c8db6b1f445a1ec363a1'

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
