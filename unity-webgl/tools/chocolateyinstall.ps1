$ErrorActionPreference = 'Stop';

$packageName    = 'unity-webgl'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/f2970305fe1c/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2019.1.6f1.exe'
$checksum64     = 'ae0f05d4f1d9e3d84b16a6f948900e30c35d88e7579ebf31f57ae29880f20a6d'

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
