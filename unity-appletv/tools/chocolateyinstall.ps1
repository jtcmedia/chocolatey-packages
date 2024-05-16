$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/d9cf669c6271/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-6000.0.1f1.exe'
$checksum64     = '7b7cb876263c193f71b6592b829103996d278a6379dfd0aa3694984aa027a50f'

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
