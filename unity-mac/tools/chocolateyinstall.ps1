$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/4cd64a618c1b/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2021.1.4f1.exe'
$checksum64     = 'f66b3bb53e9fdb37365c38b2ebcef801e9fe38d3a34df8c3780df11db0b28166'

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
