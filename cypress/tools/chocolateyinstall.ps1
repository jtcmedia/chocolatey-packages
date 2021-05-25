$ErrorActionPreference = 'Stop'
$toolsPath  = Split-Path $MyInvocation.MyCommand.Definition
$url32      = 'https://cdn.cypress.io/desktop/7.4.0/win32-ia32/cypress.zip'
$checksum32 = '8e3b74434aeee7941ee1332593afad07680b35de68bd3b9876e2613f6364c279'
$url64      = 'https://cdn.cypress.io/desktop/7.4.0/win32-x64/cypress.zip'
$checksum64 = 'b7b4d0d530bcfa56fc7298d042b993d47795c2f2db5034f1e6895b1456e0d6fb'

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
