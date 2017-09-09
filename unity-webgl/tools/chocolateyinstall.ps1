$ErrorActionPreference = 'Stop';

$packageName    = 'unity-webgl'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/5d30cf096e79/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2017.1.1f1.exe'
$checksum64     = 'e230127445a877b783b4712363bc0643b6ab588915a0cc1363a27fce44d5b1fe'

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
