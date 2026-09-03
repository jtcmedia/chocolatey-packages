$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/5c3a1087d8e4/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-6000.5.11f1.exe'
$checksum64     = '260879a29474bc20b2b12342fd552bfb33bcbe62f555223a317551d891e7e954'

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
