$ErrorActionPreference = 'Stop'
$toolsPath  = Split-Path $MyInvocation.MyCommand.Definition
$url32      = 'https://cdn.cypress.io/desktop/8.3.0/win32-ia32/cypress.zip'
$checksum32 = '75bebd281d3fd820673485bbdddb98df1ac50f46d08d2ee021c0857c08b63ea6'
$url64      = 'https://cdn.cypress.io/desktop/8.3.0/win32-x64/cypress.zip'
$checksum64 = '2ef29da50303d6e3acf62b96bffd948cc8e0728c3ec0b7af4fd7f47c557e8c84'

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
