$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/ccb7c73d2c02/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-6000.0.26f1.exe'
$checksum64     = '049e8651535afe2427021eb36a460ea3302094d4e66dad97d72e7d28937015a6'

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
