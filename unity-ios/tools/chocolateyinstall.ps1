$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/4bef613afd59/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2021.1.3f1.exe'
$checksum64     = '3c136d6e9a59c14d3bf7dc5396f4101944bf9674b434fcadbdd752e1c5a1a4f9'

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
