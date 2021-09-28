$ErrorActionPreference = 'Stop'
$toolsPath  = Split-Path $MyInvocation.MyCommand.Definition
$url32      = 'https://cdn.cypress.io/desktop/8.5.0/win32-ia32/cypress.zip'
$checksum32 = '5176ac93c3b0368e68ba61191d80814d16bcf3364306ee65bf117e502f9acbcb'
$url64      = 'https://cdn.cypress.io/desktop/8.5.0/win32-x64/cypress.zip'
$checksum64 = '51e75c768bdf072ac0250e2ae0862b268eedec470c8bf801cad9cef632fd8f87'

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
