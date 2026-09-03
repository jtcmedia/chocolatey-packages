$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/5c3a1087d8e4/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-6000.5.11f1.exe'
$checksum64     = 'e43f2dab2bd8ad1c42c2d67733db379672dacd8df6d1cdc2b84dc8a3a8e6a53b'

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
