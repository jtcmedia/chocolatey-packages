$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/3ff58d469c8a/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-6000.6.5f1.exe'
$checksum64     = 'd0e5ffafd13da35f07b456b851011de6ac36e7e504f8d3a73beb3c8adcbe420c'

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
