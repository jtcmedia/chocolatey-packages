$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/fa7102f01711/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-6000.0.8f1.exe'
$checksum64     = 'c49c2c309c01e7c937216dfb3cc81f2ba48b8a92ece8b166ff0a2a70170ede34'

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
