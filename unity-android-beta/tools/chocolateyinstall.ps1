$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url            = 'https://beta.unity3d.com/download/a13db154d9f7/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-5.6.0b11.exe'
$checksum       = '73e919d7b55394c0977a61b7aa06fe0119ffc4c598a01d181d6f32f832e8e963'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'EXE'
  url            = $url
  checksum       = $checksum
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
