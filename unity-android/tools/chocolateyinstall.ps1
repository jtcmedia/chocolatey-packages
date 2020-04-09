$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/e6e740a1c473/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2019.3.9f1.exe'
$checksum64     = '6d286915a417b5a4d8766ac68c10474d5d336e9b0f355831b9ae7d76a3c82c0b'

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
