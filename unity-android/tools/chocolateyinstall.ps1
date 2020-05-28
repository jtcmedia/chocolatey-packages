$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/59ff3e03856d/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2019.3.15f1.exe'
$checksum64     = '301cb3d943a6c2f07d582bb07f836d7e714d096c81d9b454130f589671c1ec84'

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
