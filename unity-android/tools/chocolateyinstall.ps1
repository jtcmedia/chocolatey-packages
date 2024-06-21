$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/7dd95c051e11/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-6000.0.7f1.exe'
$checksum64     = 'eafcafd1ceaabe4c6a71e2273e64638abdbca09ea91675f97f440c0cf72625ef'

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
