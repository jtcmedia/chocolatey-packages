$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/06990f28ba00/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2018.2.19f1.exe'
$checksum64     = '7fa4fa57e97afb6189d55afe9322171a7dce891534786d828c24b1e2c1ad7719'

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
