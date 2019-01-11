$ErrorActionPreference = 'Stop';

$packageName    = 'unity-metro'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/bb579dc42f1d/TargetSupportInstaller/UnitySetup-UWP-.NET-Support-for-Editor-2018.3.1f1.exe'
$checksum64     = '1d330de0371ee65d7c685cf22adb875b3e1cb9dd95ad3fdf1812540721a87945'

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
