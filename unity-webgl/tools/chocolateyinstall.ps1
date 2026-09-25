$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/45d8eee7de74/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-6000.6.3f1.exe'
$checksum64     = 'be59948d2a9b78b40d4e0fd9923631e489032401c65f710ae568eb1458f0370c'

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
