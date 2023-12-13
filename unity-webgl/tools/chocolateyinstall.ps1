$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/21747dafc6ee/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2023.2.3f1.exe'
$checksum64     = '2d2589c467f84daf9e7a2f734863ff8d14800c7b2ab077574ef1160d5beec9f5'

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
