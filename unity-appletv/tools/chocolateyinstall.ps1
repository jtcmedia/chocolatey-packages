$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/9f9d16c45e54/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2022.3.51f1.exe'
$checksum64     = '0924295423364a10430046c1fd71c9af69b4208acfd7f9a6361521ddcded69ed'

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
