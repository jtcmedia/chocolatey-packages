$ErrorActionPreference = 'Stop';

$packageName    = 'unity-webgl'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/d81f64f5201d/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2020.1.14f1.exe'
$checksum64     = 'ef0388a2492baa149f0b80f7a2ce6f413b640ca155ccc7bcce7fb97756a41712'

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
