$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/9be2869246c2/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-6000.5.0b8.exe'
$checksum64     = 'a5ece03329d0f0b69405a038c6d49c582dac3e058fbce8382afdc0210921e2ae'

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
