$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/f7f8ed4d1e24/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-6000.6.0f1.exe'
$checksum64     = '8c04bca1e121403a2ea1ae824bf5427a2c7975d94bf40b9bc21e13fa32742606'

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
