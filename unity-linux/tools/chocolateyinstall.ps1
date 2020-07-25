$ErrorActionPreference = 'Stop';

$packageName    = 'unity-linux'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://beta.unity3d.com/download/2ab9c4179772/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2020.1.0f1.exe'
$checksum64     = '731c5f045e832ae4c0fb49200ca2f0b00b97f21ac7ce31b84262b2128feaa408'

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
