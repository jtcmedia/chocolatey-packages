$ErrorActionPreference = 'Stop';

$packageName    = 'unity-linux'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/51d2f824827f/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2021.1.14f1.exe'
$checksum64     = '02fa43273487af59210d1eb937ff9590ea6356f5357578df4966441c062b0b11'

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
