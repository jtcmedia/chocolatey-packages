$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/45d8eee7de74/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-6000.6.3f1.exe'
$checksum64     = '7f8d07c1245d2826f1c32587ad1628cf1e4724f2124d47db464011412f4e8194'

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
