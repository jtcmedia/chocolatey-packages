$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/9a3bc604008a/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-6000.0.35f1.exe'
$checksum64     = 'c5309ffd5cb34911bfd81e12d7df5144ce0e8f3c2e360e77936c9c7bae1f35f0'

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
