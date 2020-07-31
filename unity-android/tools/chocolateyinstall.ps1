$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/a7aea80e3716/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2019.4.6f1.exe'
$checksum64     = '82d064b9391318c76e9eb07460c8b4ba000789e225e5208b1f263889caf1c1bd'

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
