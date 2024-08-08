$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/0f988161febf/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2022.3.41f1.exe'
$checksum64     = '2f4fb200d531770476640f0d7b2b7a7b2173489726d3e2cf1aa5539175c6a2c5'

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
