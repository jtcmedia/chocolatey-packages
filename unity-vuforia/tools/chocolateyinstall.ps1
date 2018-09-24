$ErrorActionPreference = 'Stop';

$packageName    = 'unity-vuforia'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/2207421190e9/TargetSupportInstaller/UnitySetup-Vuforia-AR-Support-for-Editor-2018.2.9f1.exe'
$checksum64     = 'f33d39bfcd204927eb29684f9f226ef64e6090256aac4f2798243d21c84ab69b'

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
