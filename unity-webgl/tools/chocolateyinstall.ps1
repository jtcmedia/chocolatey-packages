$ErrorActionPreference = 'Stop';

$packageName    = 'unity-webgl'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/c20c6d589440/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2021.2.1f1.exe'
$checksum64     = 'c43b7bf06e42af363cfd05b0435df181a0c5bb46f612e010f11cab8265af949d'

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
