$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/157d81624ddf/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-6000.0.40f1.exe'
$checksum64     = 'cffc5d8fcfa86e380cd00ab2b5e23b0bb50d4f138b75cb1621ca0d63b1c3bca2'

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
