$ErrorActionPreference = 'Stop';

$packageName    = 'unity-linux'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/b50729e604a9/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2021.1.23f1.exe'
$checksum64     = '3894c590e54bf88c8d0db1b3ab886fb4b411357526bd7a48f9fcddcc8f98e6f2'

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
