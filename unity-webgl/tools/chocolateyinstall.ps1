$ErrorActionPreference = 'Stop';

$packageName    = 'unity-webgl'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/ceef2d848e70/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2019.3.11f1.exe'
$checksum64     = 'fa6b3647d1073a38f3f6dd298e4fb1f63411877e5a640c2e426697439fe2c095'

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
