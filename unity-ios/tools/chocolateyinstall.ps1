$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/f7258d6eebbe/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-6000.4.9f1.exe'
$checksum64     = '523c541c1fc2dc868aa34b2cf8b2cb0ee38b1b32f7cb4bae73fca7b9f1d4f768'

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
