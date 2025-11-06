$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/f99f05b3e950/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-6000.0.62f1.exe'
$checksum64     = 'c32fde1932f0f18e73fea0eaed8cbc0ebe795277ff0708ac1bcf7b5e8cd9a8cd'

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
