$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/2aeb7e9a02a2/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-6000.2.0a9.exe'
$checksum64     = 'd22cfd0ec31a3016c9c15ceec9c9b417869a0f66255d56079996dba092a6cafb'

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
