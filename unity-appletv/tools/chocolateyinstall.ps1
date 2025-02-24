$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/56df1dd3b76d/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-6000.2.0a4.exe'
$checksum64     = '7bc15ce212847a74e74f568eaba3c95b4712694876937dc9f364ff3ce4bcc707'

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
