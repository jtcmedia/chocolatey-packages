$ErrorActionPreference = 'Stop';

$packageName    = 'unity-metro'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/03b40fe07a36/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-2021.1.17f1.exe'
$checksum64     = 'e50920945e725e762d9d195f499ee5a7966260a31cf11e3cb54bf9fb602c98f7'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'EXE'
  url64bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
