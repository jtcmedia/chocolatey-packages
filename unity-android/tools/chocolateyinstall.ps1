$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/270dd8c3da1c/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2020.2.1f1.exe'
$checksum64     = '37a4f47ea79066d54c36a804f7a8e5da19f514ff5ff8a83001e151acf2be8df7'

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
