$ErrorActionPreference = 'Stop'
$toolsPath  = Split-Path $MyInvocation.MyCommand.Definition
$url32      = 'https://cdn.cypress.io/desktop/6.1.0/win32-x64/cypress.zip'
$checksum32 = 'f72cb5458531850930652b2a66a78d955ecccef9d5bd2c39de15149ae933d708'

$packageArgs = @{
  PackageName     = $env:ChocolateyPackageName
  UnzipLocation   = $toolsPath
  Url             = $url32
  Checksum        = $checksum32
  ChecksumType    = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

$desktopPath = [Environment]::GetFolderPath("Desktop")

Install-ChocolateyShortcut `
  -ShortcutFilePath "$desktopPath\Cypress.lnk" `
  -TargetPath "$env:ChocolateyInstall\bin\Cypress.exe" `
  -WorkingDirectory "$toolsPath"

rm $toolsPath\*.zip -ea 0
