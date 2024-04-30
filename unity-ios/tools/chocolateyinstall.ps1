$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/0e25a174756c/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2023.2.20f1.exe'
$checksum64     = '9fbd963ace4978260a4cda96a526f39d15927a9b8d0c637fa85a3147cf1daa38'

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
