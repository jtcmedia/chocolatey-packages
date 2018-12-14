$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/6e9a27477296/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2018.3.0f2.exe'
$checksum64     = 'ccddd997a6d1108c8fffc89da33315ea01dfb19ee65b333ecef38b82adf34f6c'

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
