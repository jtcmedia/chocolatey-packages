$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/1490908003ac/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-6000.0.9f1.exe'
$checksum64     = '829e361e6b3268bca443b214344b3181e1d186a6071ab3b5de7d52fb197775c2'

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
