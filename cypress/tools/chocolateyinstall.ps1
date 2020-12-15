$ErrorActionPreference = 'Stop'
$toolsPath  = Split-Path $MyInvocation.MyCommand.Definition
$url32      = 'https://download.cypress.io/desktop'
$checksum32 = '6efae090291dd8b0c7968d3565d48c592ce8384e6423dfb5629c5dd0b8a5dd02'

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
