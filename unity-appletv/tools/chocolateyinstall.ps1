$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/1f1dac67805b/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2019.4.4f1.exe'
$checksum64     = '02ba0be702a987989ee9e4b893bb8edb1732df6cfec735f70ac2bab33173822d'

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
