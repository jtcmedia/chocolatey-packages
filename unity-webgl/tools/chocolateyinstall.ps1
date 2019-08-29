$ErrorActionPreference = 'Stop';

$packageName    = 'unity-webgl'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/8e55c27a4621/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2019.2.3f1.exe'
$checksum64     = '55d7d9d3c7490226f293b868eaef433b90099fe908daa305d9f6b9c7ac86f791'

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
