$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/e348e726afe7/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2023.1.2f1.exe'
$checksum64     = 'be1776289d070558b55abfdf6c5d53b87626e18d82185334f77ef6c2ebe5cc76'

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
