$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/d64b1a599cad/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-6000.1.6f1.exe'
$checksum64     = 'dcc7132962f4ed3bf0dc4ab471459b8283e693e6478c33ce771fad8ae4541b42'

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
