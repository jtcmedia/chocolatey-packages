$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/cf6d2d083ec9/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-6000.2.0b8.exe'
$checksum64     = 'a89423663f10e8560e291e230385ee180560185edf54d86bf25fd56e7e01eee0'

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
