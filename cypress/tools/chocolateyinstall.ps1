$ErrorActionPreference = 'Stop'
$toolsPath  = Split-Path $MyInvocation.MyCommand.Definition
$url32      = 'https://cdn.cypress.io/desktop/7.1.0/win32-ia32/cypress.zip'
$checksum32 = 'b25324ac471df6f5e0d31d5fc1ce14fc26432240a3aaa34a3d991ce0e8e718df'
$url64      = 'https://cdn.cypress.io/desktop/7.1.0/win32-x64/cypress.zip'
$checksum64 = '3d743b62fbf1243257aa08cb256a7285c1ef45baeafbafa62b53d6bc36638499'

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
