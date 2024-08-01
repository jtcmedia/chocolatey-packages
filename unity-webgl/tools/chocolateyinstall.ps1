$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/cbdda657d2f0/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2022.3.40f1.exe'
$checksum64     = '878e0bb2d2c1ec6a093eca81edccddda4094c66fe2950fb3baf44a5738bd129b'

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
