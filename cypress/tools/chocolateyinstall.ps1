$ErrorActionPreference = 'Stop'
$toolsPath  = Split-Path $MyInvocation.MyCommand.Definition
$url32      = 'https://cdn.cypress.io/desktop/8.4.0/win32-ia32/cypress.zip'
$checksum32 = 'b675c5016ddae51d43f3a24ab9b89b21b23e827286d7f408c913ed5079aaa08b'
$url64      = 'https://cdn.cypress.io/desktop/8.4.0/win32-x64/cypress.zip'
$checksum64 = '22b797cdef7d955f4f17b1c34e0a367145c055ad785fc5c979785a9e55721883'

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
