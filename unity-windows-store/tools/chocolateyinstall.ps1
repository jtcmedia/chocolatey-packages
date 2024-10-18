$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/1c4764c07fb4/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-6000.0.23f1.exe'
$checksum64     = 'e36bac249de72821a964caeede4b01d2ca9b93717c0ae6f1392a75c07a45ff6d'

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
