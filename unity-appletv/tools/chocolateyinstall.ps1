$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/4cd64a618c1b/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2021.1.4f1.exe'
$checksum64     = '30290ceaabc4262f451d2ca0cbe222262b8fdbf9b7dc08b077490076c00b3f21'

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
