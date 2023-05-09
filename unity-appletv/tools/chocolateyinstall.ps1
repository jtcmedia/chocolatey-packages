$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/5ebc6493a86f/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2022.2.18f1.exe'
$checksum64     = '1de19ffca26042a55196e33818acc51d394d29e3d39a7197c78a7a7c9831e975'

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
