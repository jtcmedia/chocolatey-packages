$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/9231f953d9d3/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2017.4.1f1.exe'
$checksum64     = 'a176f9bbccdf06e405e3f4235617be428cfd1451d1a04175251973e0e7667401'

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
