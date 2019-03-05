$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/9e14d22a41bb/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2018.3.7f1.exe'
$checksum64     = 'af4cda4e747606cc16df81d52e152665bc78b535b8a90fbff8bc7980a64a0c2c'

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
