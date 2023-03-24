$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/022dac4955a3/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2022.2.12f1.exe'
$checksum64     = '2d7813fc50a33798cffd15cdffc7eef797bd908b8a31e76c6cdf86707fe23c53'

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
