$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/ffa3a7a2dd7d/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2019.1.4f1.exe'
$checksum64     = 'ee80dde8ea0ab516b47a10e19ceedb1ed4faf64c3582089857c6e1308decc5f3'

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
