$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/d46ecc5f5049/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-6000.6.0b6.exe'
$checksum64     = '2d2c5f6471f6f499daa2fe59604f835a72a70ae2c9c9eba47a27389e403dd6a2'

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
