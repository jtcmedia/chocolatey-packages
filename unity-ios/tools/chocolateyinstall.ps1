$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/7a2fa5d8d101/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2021.3.38f1.exe'
$checksum64     = '3bd690e1d701f0db91231e7d6d63c7bcfc88a0c64afbe87e71b84c90425b2c93'

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
