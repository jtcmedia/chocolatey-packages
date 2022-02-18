$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/48b1aa000234/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2021.2.12f1.exe'
$checksum64     = '0164da7ee7614717b55c8c2b5b76c67208c05a537013686d969921990b012349'

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
