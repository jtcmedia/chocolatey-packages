$ErrorActionPreference = 'Stop';

$packageName    = 'unity-webgl'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/c63b2af89a85/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2019.2.4f1.exe'
$checksum64     = '59f9b0a06742ca3730d1ae63e98b00d5465fb345e55cc9bd02dcff38ef5c973b'

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
