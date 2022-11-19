$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/eee1884e7226/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2021.3.14f1.exe'
$checksum64     = 'ce06506fdaa8a9042fbde747c628cca7e2f60db219a2a067aacc036d954509ad'

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
