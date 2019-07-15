$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/f007ed779b7a/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2019.1.10f1.exe'
$checksum64     = 'f03e17101ebfffeb2a293e37a9be3c8260984fe18680639b0a3692bdfff01a72'

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
