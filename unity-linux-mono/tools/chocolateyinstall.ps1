$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/a56f230f6470/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-6000.3.16f1.exe'
$checksum64     = '642a7da0dc3dca8ad54c380598d67b72fec0868253a30cebf1c357450cf668e1'

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
