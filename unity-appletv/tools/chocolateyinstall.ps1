$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/ca4d5af0be6f/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2019.2.1f1.exe'
$checksum64     = 'e5ca1144dcb74dc5ef04d88d99b0a35d2beeec268ae21619bdf057763dfdf6d8'

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
