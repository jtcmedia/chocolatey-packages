$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/38bd7dec5000/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2018.2.11f1.exe'
$checksum64     = '80a1e9ca0a48024d8e3f3996766d08be105cc8be430853ac357cb18c5fb940cf'

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
