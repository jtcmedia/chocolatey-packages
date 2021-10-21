$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/6f076387c01d/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2021.1.26f1.exe'
$checksum64     = 'fdcc5d100bca2b98dc26fad52ea6680de5c99463d65eda54d3f392b5c99a8778'

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
