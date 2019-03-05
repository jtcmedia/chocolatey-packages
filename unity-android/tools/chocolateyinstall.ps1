$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/9e14d22a41bb/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2018.3.7f1.exe'
$checksum64     = 'cdd900771f5e3ee11e82a51b1c1d75401821cec5f1e6a838c5af0ba7fb11583a'

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
