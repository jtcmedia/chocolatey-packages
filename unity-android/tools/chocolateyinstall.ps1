$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/ccb7c73d2c02/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-6000.0.26f1.exe'
$checksum64     = '5091c2e468e2f4f71444807f11e9adf23714ab73d1c6b219004528c8b6e5515e'

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
