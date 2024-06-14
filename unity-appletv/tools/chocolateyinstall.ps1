$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/fb3b7b32f191/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2021.3.39f1.exe'
$checksum64     = '2d30387e35316e843b4a86460164d755af38cb2ef2bac8a60670b0ff2447790a'

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
