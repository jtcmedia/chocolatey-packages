$ErrorActionPreference = 'Stop';

$packageName    = 'unity-samsungtv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/cc85bf6a8a04/TargetSupportInstaller/UnitySetup-Samsung-TV-Support-for-Editor-2017.1.2f1.exe'
$checksum64     = 'ac61791c910e13873e8d8f62526c639a40e252d0db19f2044309f2ec95d77459'

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
