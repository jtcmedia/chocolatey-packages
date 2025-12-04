$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/0707b6d1e918/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-6000.2.15f1.exe'
$checksum64     = '9ba9815f1ef21ab65f425c60d11084f3a0535b98f8fa8d69ec153a741b9ec21d'

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
