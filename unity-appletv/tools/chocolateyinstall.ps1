$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url            = 'https://download.unity3d.com/download_unity/497a0f351392/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-5.6.0f3.exe'
$checksum       = '7ea74ab5845d2e4072738605d7c05b698dfd218df73ce62c4885e69cbbbf4d95'

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
