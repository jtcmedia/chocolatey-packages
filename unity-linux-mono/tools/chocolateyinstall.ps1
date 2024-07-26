$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/7defd84cdab8/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-6000.0.12f1.exe'
$checksum64     = '177438eea73dc3f9bec8c824841707af21101c45ca24d671e7a1cceb5d1a8ee5'

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
