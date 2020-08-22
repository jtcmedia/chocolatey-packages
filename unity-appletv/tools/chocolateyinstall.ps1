$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/cf5c4788e1d8/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2020.1.3f1.exe'
$checksum64     = '84a8cee3858be50ce5ecc2c4de5a8807d76963d59f86e86db73c56df95048456'

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
