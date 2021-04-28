$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/3737af19df53/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2021.1.5f1.exe'
$checksum64     = '10330bcb5cb9ec54f39e098aaad45373c72f31b07353ee4b955a8629af85b283'

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
