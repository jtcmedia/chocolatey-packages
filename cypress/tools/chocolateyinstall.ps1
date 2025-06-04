$ErrorActionPreference = 'Stop'
$toolsPath  = Split-Path $MyInvocation.MyCommand.Definition
$url64      = 'https://cdn.cypress.io/desktop/14.4.1/win32-x64/cypress.zip'
$checksum64 = '2a33761b1811c2a9f375d89f3aa4ebdb03bc8e29d20847f3c34950bacff243bc'

$packageArgs = @{
  PackageName     = $env:ChocolateyPackageName
  UnzipLocation   = $(Get-ToolsLocation)
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
