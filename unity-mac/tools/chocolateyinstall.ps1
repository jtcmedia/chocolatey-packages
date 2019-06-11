$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/f2970305fe1c/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2019.1.6f1.exe'
$checksum64     = '6c54eb22569685cf60dffdba09272763a61b8029ccd36cd890f94e1e100d5703'

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
