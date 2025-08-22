$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/55300504c302/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-6000.2.1f1.exe'
$checksum64     = '96ebc5b44ae0878b7383d39bef6d0687052476583f2c7f292f0b2585b98a821c'

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
