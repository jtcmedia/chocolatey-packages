$ErrorActionPreference = 'Stop'
$toolsPath  = Split-Path $MyInvocation.MyCommand.Definition
$url32      = 'https://cdn.cypress.io/desktop/8.0.0/win32-ia32/cypress.zip'
$checksum32 = 'c8d65ed13a48d469319b6c320b330db2dda1cf7b4900975e408a5fd6db64f724'
$url64      = 'https://cdn.cypress.io/desktop/8.0.0/win32-x64/cypress.zip'
$checksum64 = '80cf2e1abcbaee2f11b6117407eb0f72fd791cc26a0ac67b9fcc98ef6e2c4c84'

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
