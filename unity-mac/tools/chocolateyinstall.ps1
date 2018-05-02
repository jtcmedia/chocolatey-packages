$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/d4d99f31acba/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2018.1.0f2.exe'
$checksum64     = '38038d5306e1d1e114706dd34272b24298141809c94f62678975edae320b467e'

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
