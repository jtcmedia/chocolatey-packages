$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/698c1113cef0/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2020.1.11f1.exe'
$checksum64     = 'c5ffc19965733e705f99cf033fa8ad0bb939cfc433a883a8f5145afe6d8bc46d'

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
