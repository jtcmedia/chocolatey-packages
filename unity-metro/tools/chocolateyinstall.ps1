$ErrorActionPreference = 'Stop';

$packageName    = 'unity-metro'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/c591d9a97a0b/TargetSupportInstaller/UnitySetup-UWP-.NET-Support-for-Editor-2018.2.6f1.exe'
$checksum64     = 'dbb4025bb4d594e1d1281298accdd8179623eae1856978a3c0d5bbc74b119c61'

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
