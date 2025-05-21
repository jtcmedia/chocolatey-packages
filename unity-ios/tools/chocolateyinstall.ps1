$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/2bdac9ac0d74/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-6000.2.0b2.exe'
$checksum64     = 'c315265a590fcba9a350f16e773b71d79bdeee93589efd21b5fbfd986cb190d4'

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
