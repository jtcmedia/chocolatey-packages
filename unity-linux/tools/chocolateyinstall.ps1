$ErrorActionPreference = 'Stop';

$packageName    = 'unity-linux'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/4cd64a618c1b/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2021.1.4f1.exe'
$checksum64     = '5962aee1c75e7103b43339fe55be002d266c0d0469f1ebeea7c3ec93f458465e'

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
