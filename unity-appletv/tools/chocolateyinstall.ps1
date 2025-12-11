$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/5360b7cd7953/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-6000.0.64f1.exe'
$checksum64     = 'ee94926b0ae948511d103d3c90792b15602bea3f09d9c7a5dc3e0d058172be64'

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
