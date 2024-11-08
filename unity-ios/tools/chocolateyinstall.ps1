$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/ccb7c73d2c02/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-6000.0.26f1.exe'
$checksum64     = 'c6dbe4762130ea573b0c2faa58ea0487d5acfcffa935cefb93e23b82d7a2846d'

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
