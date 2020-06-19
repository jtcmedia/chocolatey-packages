$ErrorActionPreference = 'Stop';

$packageName    = 'unity-webgl'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/e6c045e14e4e/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2019.4.1f1.exe'
$checksum64     = '6a32d3c93fcd403cfeea32b98ee67869b2c01dc39512ae1fb5e8512de7302d67'

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
