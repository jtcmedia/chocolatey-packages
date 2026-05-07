$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/81a3023a9d59/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-6000.5.0b6.exe'
$checksum64     = 'cfa01334225a074541815431bde520bfdc67b8f68c9a882eabca72cc1411a533'

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
