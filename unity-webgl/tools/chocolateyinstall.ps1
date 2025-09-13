$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/17550c9bb584/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-6000.2.4f1.exe'
$checksum64     = 'bee35f13ce6d64559c9adc1b4f8de9b7bc9e9fe893a565b387ae6fcf4715dea9'

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
