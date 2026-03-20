$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/253a859729df/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-6000.5.0a9.exe'
$checksum64     = '2fa02c6170196f6ee8696d013e0a19af91c5f0b67376b314fe1feba5bc07aa1d'

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
