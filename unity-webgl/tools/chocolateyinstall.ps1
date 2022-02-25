$ErrorActionPreference = 'Stop';

$packageName    = 'unity-webgl'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/90b6766da538/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2021.2.13f1.exe'
$checksum64     = 'acc75d9c4e8df2a4d0731f3e4a049b85d400ba7c216f83348df1c3940b1e8f02'

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
