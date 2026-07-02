$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/de66c00feac7/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-6000.6.0b2.exe'
$checksum64     = '5318d4ae9838974e25bebe4f77df3f2577495835dcd2e418727e929aca7c0e44'

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
