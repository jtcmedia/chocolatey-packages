$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/eee1884e7226/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2021.3.14f1.exe'
$checksum64     = '8fb3cb3313df890cf7cdc45cf70776866dab7601379ad78036b87748a38e5836'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'EXE'
  url64bit       = $url64
  checksum       = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
