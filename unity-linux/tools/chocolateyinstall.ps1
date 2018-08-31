$ErrorActionPreference = 'Stop';

$packageName    = 'unity-linux'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/c591d9a97a0b/TargetSupportInstaller/UnitySetup-Linux-Support-for-Editor-2018.2.6f1.exe'
$checksum64     = '3ac703155fab1da8b84ea03cfdcb727d8283f1068253d9a95d3049bf7e761cf9'

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
