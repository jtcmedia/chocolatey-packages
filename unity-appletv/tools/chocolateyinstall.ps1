$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/03b40fe07a36/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2021.1.17f1.exe'
$checksum64     = '5c5f59486bb87e43917c8bbbb9da76b94c2f62338130a8ad0526ba918473a8dc'

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
