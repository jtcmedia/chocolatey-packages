$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/ccb7c73d2c02/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-6000.0.26f1.exe'
$checksum64     = 'ab25a0f1e6c99011bb19a7b250414c5ddb2bf8ba3d4afbfcafaca37f0c6768fc'

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
