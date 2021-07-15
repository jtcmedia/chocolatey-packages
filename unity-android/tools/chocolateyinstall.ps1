$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/e767a7370072/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2021.1.15f1.exe'
$checksum64     = '492c5d69de533b3a72fdcc12ad32f9aa38f1b49ccacff74e9a1d49b1d618cabb'

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
