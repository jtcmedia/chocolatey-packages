$ErrorActionPreference = 'Stop';

$packageName    = 'unity-webgl'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/9b001d489a54/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2019.1.11f1.exe'
$checksum64     = 'c35bc34f040027cfb39cb81331f64b6ebac2cb287c1efdb6f60d961e14a0bc69'

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
