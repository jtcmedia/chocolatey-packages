$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/e89d5df0e333/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-6000.2.12f1.exe'
$checksum64     = 'd347df3962541a92d7e827f21b2ded1fb65341879065c43df64e64a26617e3fe'

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
