$ErrorActionPreference = 'Stop';

$packageName    = 'unity-linux'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/32358a8527b4/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2021.2.3f1.exe'
$checksum64     = '2d4fa24a736b74ea3f116da666dabce0111613d1b998c34b3707ca8f40fd23bd'

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
