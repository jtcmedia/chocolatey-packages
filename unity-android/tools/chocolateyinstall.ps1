$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/35dcd44975df/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2022.2.0f1.exe'
$checksum64     = '229ccd2d5bca1175cf2fd66ae8d2423c94a7ca30f51054b2674672ed4212dba9'

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
