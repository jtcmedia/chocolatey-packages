$ErrorActionPreference = 'Stop'
$toolsPath  = Split-Path $MyInvocation.MyCommand.Definition
$url32      = 'https://cdn.cypress.io/desktop/8.2.0/win32-ia32/cypress.zip'
$checksum32 = '7c86e69837cce596b2000feee725fc4499344d1823cba8e28d999487e23ea366'
$url64      = 'https://cdn.cypress.io/desktop/8.2.0/win32-x64/cypress.zip'
$checksum64 = '3a3cd36d3ea9866b0b49d7884a5c3ff9415de8c72c5118d1923e79cd402c20cd'

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
