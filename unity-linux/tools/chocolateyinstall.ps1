$ErrorActionPreference = 'Stop';

$packageName    = 'unity-linux'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/fc1d3344e6ea/TargetSupportInstaller/UnitySetup-Linux-Support-for-Editor-2017.3.1f1.exe'
$checksum64     = '10eef7a14767ddd815ae74339788df2d3e1d15c516832e5b1ef72f1d7d11eae0'

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
