$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/a7aea80e3716/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2019.4.6f1.exe'
$checksum64     = 'f4860952f1dd8532571c0d85241e1e572ca6652dd06fdc0acc45660e6235a9cf'

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
