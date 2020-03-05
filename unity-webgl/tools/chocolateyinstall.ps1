$ErrorActionPreference = 'Stop';

$packageName    = 'unity-webgl'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/7ceaae5f7503/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2019.3.3f1.exe'
$checksum64     = 'd6c7f3e547e6ea63b8d02edc4846734bae701cea8c57fddd5062c29b46f15452'

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
