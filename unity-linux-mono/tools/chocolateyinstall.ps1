$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/a6dd9a634651/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2023.2.1f1.exe'
$checksum64     = 'a91e30ed4c9a8b5d80ee8789bf084c76576e6dc53386a80051d72d636a9f2453'

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
