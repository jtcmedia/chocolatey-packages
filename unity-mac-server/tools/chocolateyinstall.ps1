$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/d20c9ac777da/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-6000.6.6f1.exe'
$checksum64     = '226459f00f0a7013cdf36c201b26e3793a844a152b4c1dab1a1a8314f9f0d9f7'

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
