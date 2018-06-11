$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/1a308f4ebef1/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2018.1.4f1.exe'
$checksum64     = 'c86b235d48d327f99eec3d49117b0501e9fe04a6395e527fdbf8fac1b7c2921c'

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
