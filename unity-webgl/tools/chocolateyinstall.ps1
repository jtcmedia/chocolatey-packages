$ErrorActionPreference = 'Stop';

$packageName    = 'unity-webgl'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/a03098edbbe0/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2021.1.13f1.exe'
$checksum64     = '8c5d5ca73eee3eaf04ce58f1e972a5011e82e3e406c9f15c713446d590a28054'

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
