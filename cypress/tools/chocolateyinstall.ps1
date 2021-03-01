$ErrorActionPreference = 'Stop'
$toolsPath  = Split-Path $MyInvocation.MyCommand.Definition
$url32      = 'https://cdn.cypress.io/desktop/6.6.0/win32-ia32/cypress.zip'
$checksum32 = 'e3bedd93027c14c4058b24b4c9af159675a0b91e056f54ea364ba0d1abb8f590'
$url64      = 'https://cdn.cypress.io/desktop/6.6.0/win32-x64/cypress.zip'
$checksum64 = 'dc500910e10ad7bcb396484c77c775b17d511c4cafa52f6f07adb59f09d697f7'

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
