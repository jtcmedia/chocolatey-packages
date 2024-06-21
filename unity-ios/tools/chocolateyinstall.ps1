$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/7dd95c051e11/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-6000.0.7f1.exe'
$checksum64     = 'f85cf2df27559190e2e1774e90b4e03c0a1f64415fb28e530fb0c9f85ccab09c'

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
