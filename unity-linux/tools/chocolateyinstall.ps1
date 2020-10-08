$ErrorActionPreference = 'Stop';

$packageName    = 'unity-linux'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/22e8c0b0c3ec/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2020.1.8f1.exe'
$checksum64     = 'd0fc3f3daf1ab58800624566b7710bc9324eaafeb3719d35d734559c5ad8dabe'

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
