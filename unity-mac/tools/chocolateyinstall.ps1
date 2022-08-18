$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/8f5fde82e2dc/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2020.3.38f1.exe'
$checksum64     = '124f7d51cdf2ebfd1c673e9c38cc7bc2f46940b29356947f50d37e3f6824f7d6'

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
