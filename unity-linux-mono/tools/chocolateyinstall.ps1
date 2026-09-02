$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/f7f8ed4d1e24/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-6000.6.0f1.exe'
$checksum64     = 'be485ce06f289c8be6601989f2dfef255f9a1469037b90f0581307044a197c9a'

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
