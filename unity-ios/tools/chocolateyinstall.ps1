$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/4ff56b3ea44c/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-6000.0.0f1.exe'
$checksum64     = 'eee88f1f7c8ea29baad865251c0fdfb49faeda78a569af00c946a5f7eaeca10c'

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
