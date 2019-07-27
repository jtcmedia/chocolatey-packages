$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/f04f5427219e/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2019.1.12f1.exe'
$checksum64     = '67cb45dd4b55d5de1c07f9db7e797f105ea121dcac4807a9f9cb9a7b5a959028'

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
