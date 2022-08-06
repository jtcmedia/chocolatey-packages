$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/916d9c03b898/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2022.1.12f1.exe'
$checksum64     = '19b269e5e1fdf95c6b1d7b5790e8faa264058c9039f45901a7293700e202405b'

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
