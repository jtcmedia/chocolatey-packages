$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url            = 'http://download.unity3d.com/download_unity/88d00a7498cd/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-5.5.1f1.exe'
$checksum       = 'e5d5e5748c5ecf07c619cdd671f25da5798fbb9717611bd3f925e6f6cd71e65d'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'EXE'
  url            = $url
  checksum       = $checksum
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
