$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/5f90a5ebde0f/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2022.3.13f1.exe'
$checksum64     = 'be0143e794a331c30aa8e3853929dda9f32b6c0385b1b89309eae7fd56250e5c'

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
