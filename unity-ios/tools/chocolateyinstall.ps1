$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/eb7dd46c99ad/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-6000.2.0b4.exe'
$checksum64     = 'dcd633b347d36cc5386332dd1f98413e356961936200027dbb242d73563541c4'

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
