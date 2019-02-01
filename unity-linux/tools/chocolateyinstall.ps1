$ErrorActionPreference = 'Stop';

$packageName    = 'unity-linux'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/1d952368ca3a/TargetSupportInstaller/UnitySetup-Linux-Support-for-Editor-2018.3.4f1.exe'
$checksum64     = '654feb51a67e276c6cdfc11b08bde843dd5bac39fb918df308809a571926ce18'

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
