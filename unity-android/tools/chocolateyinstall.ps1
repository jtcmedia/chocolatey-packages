$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/0a46ddfcfad4/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2018.2.12f1.exe'
$checksum64     = '77325748350b66e577746685e9f74ba333dc4d1382bca4c831eb7eb917cc0a9e'

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
