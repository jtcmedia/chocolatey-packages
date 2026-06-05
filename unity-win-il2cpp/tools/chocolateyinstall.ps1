$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/cf0352b38e81/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-6000.3.17f1.exe'
$checksum64     = '4edabd0cdcec7ed421b31cdfcc0a603eddcccac177a0347f25b762a667b6925d'

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
