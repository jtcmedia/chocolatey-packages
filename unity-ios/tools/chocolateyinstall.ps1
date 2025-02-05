$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/8a01b55183a9/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-6000.2.0a1.exe'
$checksum64     = 'd2ed14a51ab2d047f65c4a823a8d9bbeb161ff2d48480547930ad58f143a1fa4'

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
