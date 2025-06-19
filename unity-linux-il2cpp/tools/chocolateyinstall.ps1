$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/439913089442/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-6000.2.0b6.exe'
$checksum64     = '7b28f3e1c57ef2d0852ca21a8e3a5bdcffda5247394e4ddda889f02c2c70ef34'

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
