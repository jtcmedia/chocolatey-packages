$ErrorActionPreference = 'Stop';

$packageName    = 'unity-webgl'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/1a308f4ebef1/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2018.1.4f1.exe'
$checksum64     = '5619c13fd9a0b4eb1f8c6f73e75a932ef9616bb291d07bded7ce9f7a0d289bd7'

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
