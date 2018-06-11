$ErrorActionPreference = 'Stop';

$packageName    = 'unity-linux'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/1a308f4ebef1/TargetSupportInstaller/UnitySetup-Linux-Support-for-Editor-2018.1.4f1.exe'
$checksum64     = '45165394fd9fa1d5b93d324676d8c50d6b98c882d6e4641ad7d81c165ec65056'

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
