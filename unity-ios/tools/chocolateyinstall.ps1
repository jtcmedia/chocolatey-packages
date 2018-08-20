$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/cb262d9ddeaf/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2018.2.4f1.exe'
$checksum64     = '0d223a0237ff67d769637613a70645e37a0d4012c88041d1149b377d8494d2e9'

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
