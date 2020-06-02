$ErrorActionPreference = 'Stop';

$packageName  = $env:ChocolateyPackageName
$packageTitle = $env:ChocolateyPackageTitle
$toolsDir     = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://github.com/Ryochan7/DS4Windows/releases/download/v2.1.2/DS4Windows_2.1.2_x86.zip'
$checksum     = '99d15ea427b9ce131dfd6b3f64a2ffc01b0100a8a7d6190adab421ae3ef0b3d0'
$url64        = 'https://github.com/Ryochan7/DS4Windows/releases/download/v2.1.2/DS4Windows_2.1.2_x64.zip'
$checksum64   = '675bdeaf6ffa7bd6d46914cba8d36b27e1a7fece1b17a8b9b630c192343cb7a3'

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
