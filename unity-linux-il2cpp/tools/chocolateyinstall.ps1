$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/7defd84cdab8/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-6000.0.12f1.exe'
$checksum64     = '67429c185f511f8937177647ebacb38b715ddecf4b2bb94c2c16c8f759a3156c'

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
