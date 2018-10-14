$ErrorActionPreference = 'Stop';

$packageName    = 'unity-webgl'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/0a46ddfcfad4/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2018.2.12f1.exe'
$checksum64     = 'fc32a46e75d91d8914e4c785e3adc1057f02eaa6b0201a6641821d3b3126be18'

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
