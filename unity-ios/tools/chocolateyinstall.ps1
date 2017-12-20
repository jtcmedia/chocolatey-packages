$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/a9f86dcd79df/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2017.3.0f3.exe'
$checksum64     = '1a078219a7a12e051d44b4f715f667ff4588d70372e48d34258906635838c0f2'

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
