$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/da872d7b2f71/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-6000.1.0b8.exe'
$checksum64     = '60d72a6644d877184781342e1b0df561b97b3b484f348a3e2fcdcca76a4ff513'

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
