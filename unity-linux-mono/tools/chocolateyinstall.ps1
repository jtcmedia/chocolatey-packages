$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/d6360bedb9a0/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2021.3.2f1.exe'
$checksum64     = 'c84c92f9bb8600724b13c5e5150d22867e284820dbfcdf6cf784ecc4809ae402'

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
