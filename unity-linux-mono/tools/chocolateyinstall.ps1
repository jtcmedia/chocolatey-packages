$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/369b620af41c/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2022.1.0f1.exe'
$checksum64     = '3fc8b1355b80bd2c2e5e13e60786acb44ed6a293036f46098933e22277025f4a'

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
