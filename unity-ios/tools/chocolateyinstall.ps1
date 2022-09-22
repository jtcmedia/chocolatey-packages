$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/2d349551e475/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2022.1.17f1.exe'
$checksum64     = '35806d0dbfa5112a5ebbf7c4455878683c3fe99f45d3dc20ce53fbc22c573121'

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
