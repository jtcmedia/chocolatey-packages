$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/5968d7f82152/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2019.3.10f1.exe'
$checksum64     = '411a7e77997bec2de8896f827c84d2b5ab22a467b50a4571c2cb24238db8ab61'

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
