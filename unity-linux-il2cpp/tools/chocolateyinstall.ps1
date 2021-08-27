$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/25bdc3efbc2d/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2021.1.18f1.exe'
$checksum64     = '270424ba4cd49d60b12133ce3f45865b8ba576673689743da460c9103874bbd2'

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
