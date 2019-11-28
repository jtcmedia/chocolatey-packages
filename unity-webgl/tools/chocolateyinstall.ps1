$ErrorActionPreference = 'Stop';

$packageName    = 'unity-webgl'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/49dd4e9fa428/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2019.2.14f1.exe'
$checksum64     = '6af07fc39bba42b4d354c05cf54b1315d1373a5a23c1781cb128ab0a8a758c5d'

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
