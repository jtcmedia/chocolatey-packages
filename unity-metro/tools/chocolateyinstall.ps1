$ErrorActionPreference = 'Stop';

$packageName    = 'unity-metro'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/06990f28ba00/TargetSupportInstaller/UnitySetup-UWP-.NET-Support-for-Editor-2018.2.19f1.exe'
$checksum64     = '4b62f70dcd0cce1666157c9fa8f08b8a007027259b43bec455293c51ab4e9e9c'

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
