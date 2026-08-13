$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/5cb7df797b7d/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-6000.5.8f1.exe'
$checksum64     = '2a2d878943b798ba879aa1cdf0d6697fbdfd510a1332cba75d6b9bf165c03440'

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
