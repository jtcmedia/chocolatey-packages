$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/fef62e97e63b/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2019.1.1f1.exe'
$checksum64     = '78e2ab58874a93d35aeac91fe26146cc001aae58e9d97c70f8e11f0403cdcf6b'

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
