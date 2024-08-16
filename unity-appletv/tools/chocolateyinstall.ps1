$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/6a96561936c0/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-6000.0.15f1.exe'
$checksum64     = 'ce5c99b569235b512f520a84852e891657b4c9840f2d3d865a8ceca523458545'

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
