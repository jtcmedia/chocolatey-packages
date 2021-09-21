$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/f2d5d3c59f8c/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2021.1.21f1.exe'
$checksum64     = '514d5920581992f6497b0e23070fd9240b9153ed0ec923efb55da8e53c66ea51'

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
