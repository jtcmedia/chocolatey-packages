$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/11fa355cd605/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-6000.0.24f1.exe'
$checksum64     = '0b24e18e1dcca11476ff9a99d39f7bc07be93328fed942a8d78aa11522aa06d6'

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
