$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/249fe0a196c2/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-6000.2.0a6.exe'
$checksum64     = 'e9709001c4de8ec6018c1ab56ad812e231ecc3b0e39012b986c031e8b85bd1ea'

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
