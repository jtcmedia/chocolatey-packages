$ErrorActionPreference = 'Stop';

$packageName    = 'unity-tizen'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url            = 'https://download.unity3d.com/download_unity/497a0f351392/TargetSupportInstaller/UnitySetup-Tizen-Support-for-Editor-5.6.0f3.exe'
$checksum       = 'b842d1ffefd247e7e2ef63a2a7a4413e81cc915bf61a84a99d3a918043f1b732'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'EXE'
  url            = $url
  checksum       = $checksum
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
