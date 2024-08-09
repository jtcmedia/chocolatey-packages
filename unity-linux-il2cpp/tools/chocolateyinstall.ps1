$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/e12ab2d6a089/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-6000.0.14f1.exe'
$checksum64     = '5f82d8b97b2ce8a6c5516c9765416b759776c3cfb13677d2bbb8c604bea3fc38'

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
