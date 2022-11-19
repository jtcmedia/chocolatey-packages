$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/eee1884e7226/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2021.3.14f1.exe'
$checksum64     = '5a1e2a730361e770bee386d5059f86d0ab5d1ef02b724565966f336d2d9860a6'

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
