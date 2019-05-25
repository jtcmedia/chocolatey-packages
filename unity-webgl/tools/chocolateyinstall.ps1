$ErrorActionPreference = 'Stop';

$packageName    = 'unity-webgl'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/ffa3a7a2dd7d/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2019.1.4f1.exe'
$checksum64     = '9e4133b58ff7db13cffafc1f23e50895e830c1f0202fbb6b58d324db7c402e83'

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
