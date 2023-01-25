$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/55531d7fa82e/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-2022.2.3f1.exe'
$checksum64     = '30246ed3506cd4fb5ef703e3f143d9cb01a7e0ba2c1fd9dc36e9aaeef14d146e'

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
