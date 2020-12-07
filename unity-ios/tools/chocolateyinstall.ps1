$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/f483ad6465d6/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2020.1.16f1.exe'
$checksum64     = 'f1630053d13a29c6ebacaeb0710365292d06c869e86a29a6784e9991e793d187'

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
