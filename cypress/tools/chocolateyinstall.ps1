$ErrorActionPreference = 'Stop'
$toolsPath  = Split-Path $MyInvocation.MyCommand.Definition
$url32      = 'https://cdn.cypress.io/desktop/7.3.0/win32-ia32/cypress.zip'
$checksum32 = '78c591a8aeb208cd995a0c4593955546408d4e71d5455bf93511a680f23b69fd'
$url64      = 'https://cdn.cypress.io/desktop/7.3.0/win32-x64/cypress.zip'
$checksum64 = '8a8809e4fd22fe7bfc3103c39df3f4fce9db0964450ce927558e9a09558cb26c'

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
