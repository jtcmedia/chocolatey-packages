$ErrorActionPreference = 'Stop';

$packageName    = 'unity-webgl'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/d691e07d38ef/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2019.3.5f1.exe'
$checksum64     = '51f198fc006996fb4c1d9582c0accb5b3caadf7e959f682f6c91c7125a7093c0'

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
