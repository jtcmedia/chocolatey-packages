$ErrorActionPreference = 'Stop';

$packageName    = 'unity-webgl'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/f483ad6465d6/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2020.1.16f1.exe'
$checksum64     = '0747fffad0b3202236cf0cf95b31619a45069b6f583ca18759e95505d8d6609a'

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
