$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/b84c4024cd38/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2023.1.17f1.exe'
$checksum64     = '3c346fd8017bf24cf5bb0e8326df80066c7b95dffbed591b9d69b280cbc001eb'

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
