$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/17028576122a/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-6000.0.5f1.exe'
$checksum64     = '36540de0dde641127f2a144d186461b38408b95e81df79ae145fa8dc4c5f43af'

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
