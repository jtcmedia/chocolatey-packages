$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/6f7f9e1c9e8a/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-6000.0.76f1.exe'
$checksum64     = '8d1edec5cf5eddc1ef3e4d46ae8dd3b8a329feb67ae1c2ab780cdc9a16d3f350'

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
