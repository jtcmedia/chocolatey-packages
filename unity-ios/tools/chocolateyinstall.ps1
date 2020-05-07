$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/d4ddf0d95db9/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2019.3.13f1.exe'
$checksum64     = '803eab8b562c5c52c01fe424c9cf1a77eb46d2ac00afe462d6faa885d52f23d5'

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
