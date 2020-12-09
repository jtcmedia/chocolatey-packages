$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/9957aee8edc2/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2020.1.17f1.exe'
$checksum64     = '185cd7ff46f6ff9e78eee77a66010c1208b61a249a3018558e5fd5771da27c23'

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
