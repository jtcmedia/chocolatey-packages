$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/1431a7d2ced7/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2018.2.3f1.exe'
$checksum64     = 'a1dbe574cdf7a8968b65ca3a67fed0804ce8784edc6f9c080c3aa9d48efca85a'

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
