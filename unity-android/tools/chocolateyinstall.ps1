$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/ee872746220e/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2021.2.10f1.exe'
$checksum64     = 'fab013967b53eb82b83c360edf8c52c7c3dcad3a16b09b16a58f21dfdbb43ea5'

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
