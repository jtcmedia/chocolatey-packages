$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/e5ad54273a6f/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2023.1.16f1.exe'
$checksum64     = 'cf8e3695f088b98daa3669604a45fb3a0e074048f760312f075e9a7292239938'

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
