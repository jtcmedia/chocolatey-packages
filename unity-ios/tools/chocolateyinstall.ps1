$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/621cd60d08fd/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2022.2.11f1.exe'
$checksum64     = '0e9d47e1192bb7e5a6fca629d5b95f17b4f8ce4fcb6e7cc88ac7889a63c5c99c'

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
