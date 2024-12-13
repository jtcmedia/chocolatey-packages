$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/a206c360e2a8/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-6000.0.31f1.exe'
$checksum64     = '0d07696a0ac1dd35da3ba2edfdcc4e76986a66ba66dab027d1f46cba5c1d1b46'

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
