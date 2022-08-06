$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/916d9c03b898/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2022.1.12f1.exe'
$checksum64     = 'd30d33d4e09c64985c7207977900fa16f42700315d91147aa8e260df21207c1c'

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
