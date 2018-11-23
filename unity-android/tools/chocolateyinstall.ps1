$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/88933597c842/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2018.2.17f1.exe'
$checksum64     = '43c0278023e6e8bdd4ef8eae8cf1efbe14498c2f57e38eb720b6efe749753017'

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
