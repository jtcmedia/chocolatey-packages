$ErrorActionPreference = 'Stop';

$packageName    = 'unity-linux'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://beta.unity3d.com/download/9dace1eed4cc/TargetSupportInstaller/UnitySetup-Linux-Support-for-Editor-2019.2.5f1.exe'
$checksum64     = '6d52701b0d68cd703a6bb43e4ebd2c0d5992a64d57db23002e63358f69ad7f7e'

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
