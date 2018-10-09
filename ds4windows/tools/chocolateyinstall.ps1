$ErrorActionPreference = 'Stop';

$packageName  = $env:ChocolateyPackageName
$packageTitle = $env:ChocolateyPackageTitle
$toolsDir     = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://github.com/Ryochan7/DS4Windows/releases/download/v1.5.9/DS4Windows_1.5.9_x86.zip'
$checksum     = 'b846a677b752d7659ef3a500302a5e78ecc98b9ae6c83c0b8510950a4025e31b'
$url64        = 'https://github.com/Ryochan7/DS4Windows/releases/download/v1.5.9/DS4Windows_1.5.9_x64.zip'
$checksum64   = '0443b5bf89f05f8de105bf0117a14c4e4113f0e9e0935506786987dfe8d8ac70'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url           = $url
  url64bit      = $url64
  checksum      = $checksum
  checksumType  = 'sha256'
  checksum64    = $checksum64
  checksumType64= 'sha256'
  validExitCodes= @(0)
}

Install-ChocolateyZipPackage @packageArgs

$startupPath = [Environment]::GetFolderPath("Startup")
$startMenuPath = [Environment]::GetFolderPath("CommonPrograms")

if(Test-Path -Path "$startupPath\$packageName.lnk") {
    Install-ChocolateyShortcut `
        -ShortcutFilePath "$startupPath\$packageName.lnk" `
        -TargetPath "$env:ChocolateyInstall\bin\$packageTitle.exe"
}

Install-ChocolateyShortcut `
  -ShortcutFilePath "$startMenuPath\$packageName.lnk" `
  -TargetPath "$env:ChocolateyInstall\bin\$packageTitle.exe"
