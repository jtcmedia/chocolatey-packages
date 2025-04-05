$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/d91bd3d4e081/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-6000.0.45f1.exe'
$checksum64     = '99dcb794c5b6456695246b56e6af61038358823132971b5bcb61c043bdd5e3f6'

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
