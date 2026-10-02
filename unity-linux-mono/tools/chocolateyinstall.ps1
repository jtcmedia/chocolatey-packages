$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/12bfff696524/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-6000.6.4f1.exe'
$checksum64     = 'e4c640c662ba69cf12f6108eb8dc28f96bcb4776579c9b9d18917c2534a544e0'

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
