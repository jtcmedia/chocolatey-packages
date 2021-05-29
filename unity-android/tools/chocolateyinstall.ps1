$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/7a790e367ab3/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2021.1.9f1.exe'
$checksum64     = '2bb0391ee89f14556ca6f2a774dc04a7e11e2237aad6bc89f7313f41bd432ee9'

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
