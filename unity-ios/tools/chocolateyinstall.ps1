$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/da872d7b2f71/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-6000.1.0b8.exe'
$checksum64     = '7f30e8c3ca48d7ed7732531d41e0beea9cae1a57aeb9ab9bb38185e1eb92fdf8'

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
