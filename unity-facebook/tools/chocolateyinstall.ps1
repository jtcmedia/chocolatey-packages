$ErrorActionPreference = 'Stop';

$packageName    = 'unity-facebook'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/d4d99f31acba/TargetSupportInstaller/UnitySetup-Facebook-Games-Support-for-Editor-2018.1.0f2.exe'
$checksum64     = 'd882e4592c965024c04cc977742d133dc1400f1240f2546d1dc103167088d937'

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
