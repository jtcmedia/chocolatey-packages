$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/947e1ea5aa8d/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2018.3.9f1.exe'
$checksum64     = 'ee23467765a91db43b6b1dd77340a25f5b6af1576539cc25968f6ce256d3a5e9'

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
