$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/ca4d5af0be6f/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2019.2.1f1.exe'
$checksum64     = 'd277f0e9e5f70a4fc55c83567ce52cbe9956059002f28885dc415cbceb07e35f'

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
