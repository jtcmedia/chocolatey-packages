$ErrorActionPreference = 'Stop';

$packageName    = 'unity-webgl'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/20b4642a3455/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2019.4.2f1.exe'
$checksum64     = 'f66fd08c68bcc4fd23d1526ce6688359b22567673b7c15128d9430aa27dad961'

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
