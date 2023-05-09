$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/5ebc6493a86f/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2022.2.18f1.exe'
$checksum64     = '50147fbf33d5743ac0929af17b97477d473ee5e5227199ffbc5854dbd9a7284d'

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
