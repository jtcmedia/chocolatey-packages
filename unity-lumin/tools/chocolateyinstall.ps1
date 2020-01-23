$ErrorActionPreference = 'Stop';

$packageName    = 'unity-lumin'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/929ab4d01772/TargetSupportInstaller/UnitySetup-Lumin-Support-for-Editor-2019.2.19f1.exe'
$checksum64     = 'f0ad3d266b2e0b8ca873d0816c4935520f75c5a41f302e45b00acfa46ce1228e'

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
