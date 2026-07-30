$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/0e0577a1a2ac/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-6000.5.6f1.exe'
$checksum64     = '2854b0e9b41a4617609d0e84f9649f5c87e27d1db9a26855297db37487eb5959'

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
