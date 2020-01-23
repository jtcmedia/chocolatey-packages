$ErrorActionPreference = 'Stop';

$packageName    = 'unity-webgl'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/929ab4d01772/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2019.2.19f1.exe'
$checksum64     = '41e58904a6d69863ebcdac1ef9bcec63c0d5ecd6de9668059a655db9245b987a'

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
