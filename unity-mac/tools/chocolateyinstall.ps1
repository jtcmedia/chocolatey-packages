$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/5ef4f5b5e2d4/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2020.3.47f1.exe'
$checksum64     = '9e9f3676a91967d6b95a6eb5d09e7079d99513785815ac78dab160eb7ec11a51'

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
