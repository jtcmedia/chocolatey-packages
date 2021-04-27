$ErrorActionPreference = 'Stop'
$toolsPath  = Split-Path $MyInvocation.MyCommand.Definition
$url32      = 'https://cdn.cypress.io/desktop/7.2.0/win32-ia32/cypress.zip'
$checksum32 = '1d846b8f8a58094fe43bafc73d6cf7fb05a7cbfb979592e0cad66fcac6bb0299'
$url64      = 'https://cdn.cypress.io/desktop/7.2.0/win32-x64/cypress.zip'
$checksum64 = '15ee7991fe8fb7a1067fac4e18831f8c76430e45a978759f4f49d4ba1dbffaeb'

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
