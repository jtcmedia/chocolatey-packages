$ErrorActionPreference = 'Stop';

$packageName    = 'unity-vuforia'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/fc1d3344e6ea/TargetSupportInstaller/UnitySetup-Vuforia-AR-Support-for-Editor-2017.3.1f1.exe'
$checksum64     = '1ea829fe1f0420a66bdc566add2c5af060ac65d4c0a2589ab45e7ae9d4857d87'

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
