$ErrorActionPreference = 'Stop';

$packageName    = 'unity-webgl'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/5f859a4cfee5/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2019.2.11f1.exe'
$checksum64     = 'a0c0ddebcc6f17a80a399760e0d8da2d11673197a0416959704936784222c93b'

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
