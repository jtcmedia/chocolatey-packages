$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/342347f1f18f/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-6000.5.0b9.exe'
$checksum64     = 'a73a440a10dc9b8c85ec49d9ed66970025ac6dc0e9e1e2d22dbf77844d34877a'

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
