$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/d36222f39966/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-6000.5.0a8.exe'
$checksum64     = '37cd206fdec1f660ce710d4f4a7a4120ad719c913a2d1df5991f259f547fee9e'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'EXE'
  url64bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
