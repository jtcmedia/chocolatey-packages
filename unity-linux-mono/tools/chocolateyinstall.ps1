$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/4016570cf34f/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2021.3.16f1.exe'
$checksum64     = 'fb4caefde6849270a371a4b2f9a3f14d2362b7d240551169ac446a07d052b8d5'

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
