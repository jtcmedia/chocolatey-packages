$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/81610f64359c/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2019.4.5f1.exe'
$checksum64     = '20e42e2048ab0e014914eaafdfc09fde44b5a6301f68e4d3ae52468c10292537'

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
