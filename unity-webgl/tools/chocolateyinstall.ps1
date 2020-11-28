$ErrorActionPreference = 'Stop';

$packageName    = 'unity-webgl'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/97d0ae02d19d/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2020.1.15f1.exe'
$checksum64     = 'fbb908b4e704e8bb4d8c9a78a1603831cccbcfa5887df7c4f9a56a084dd81e05'

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
