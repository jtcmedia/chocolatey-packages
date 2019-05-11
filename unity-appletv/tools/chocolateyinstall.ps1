$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/3e18427e571f/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2019.1.2f1.exe'
$checksum64     = '1fdb1e38f0559eefbbf086e127f161f0fda9a2d0752761f331b256ad9f2352aa'

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
