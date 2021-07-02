$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/a03098edbbe0/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2021.1.13f1.exe'
$checksum64     = 'ce9c09779122929c05c9458ec95475a5329b2d82b5cd264a62bf13e56be44428'

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
