$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/f57a55ac740d/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-6000.2.0b7.exe'
$checksum64     = '373020f1e40ac906da2d44b8cfa2313b815976711657407ed39bb7ca3ef5816f'

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
