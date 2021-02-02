$ErrorActionPreference = 'Stop'
$toolsPath  = Split-Path $MyInvocation.MyCommand.Definition
$url32      = 'https://cdn.cypress.io/desktop/6.4.0/win32-ia32/cypress.zip'
$checksum32 = '9ea55a9dab52f88fa60731fe09ed644fcc7d0d6eb344a608118fd2e34406fa67'
$url64      = 'https://cdn.cypress.io/desktop/6.4.0/win32-x64/cypress.zip'
$checksum64 = '014c4a8541839f515285cd3a006ad4ca50be7f6b046d611cc730a396100c928a'

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
