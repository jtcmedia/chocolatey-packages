$ErrorActionPreference = 'Stop';

$packageName    = 'unity-webgl'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/f88de2c96e63/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2018.3.10f1.exe'
$checksum64     = '45fe21f3ae3510df40a493385c4dae9148438538c200317a3c33f8cdd2cca81b'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'EXE'
  url64bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
