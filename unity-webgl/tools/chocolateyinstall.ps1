$ErrorActionPreference = 'Stop';

$packageName    = 'unity-webgl'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/b1a7e1fb4fa5/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2019.2.12f1.exe'
$checksum64     = '2220a7363a3af39bbd122455dca6a45dabc9f0d5f82d4e7399745876f2226102'

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
