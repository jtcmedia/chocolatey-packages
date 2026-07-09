$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/cf7ddae6c717/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-6000.6.0b3.exe'
$checksum64     = '7d6cf8b146c989d4ad4410c673c057c747a00d65f3f269eb9ff9f70636cac6c1'

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
