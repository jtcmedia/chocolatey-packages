$ErrorActionPreference = 'Stop'
$toolsPath  = Split-Path $MyInvocation.MyCommand.Definition
$url32      = 'https://cdn.cypress.io/desktop/7.6.0/win32-ia32/cypress.zip'
$checksum32 = '6b6f198170ffc480a001315f55dea5adbcd3d7bd99c6ece72a6233e6278294bd'
$url64      = 'https://cdn.cypress.io/desktop/7.6.0/win32-x64/cypress.zip'
$checksum64 = '6b07f2d345d5e6e488773a17e46896c4bbd60fd2455e33036a590b0aad4c753b'

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
