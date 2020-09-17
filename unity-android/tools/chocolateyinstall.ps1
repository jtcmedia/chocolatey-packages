$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/fc477ca6df10/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2020.1.6f1.exe'
$checksum64     = '6ac3a817c8d5467d9f2a764d15d05b14bdb918335e8c0ca71783016223adcebd'

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
