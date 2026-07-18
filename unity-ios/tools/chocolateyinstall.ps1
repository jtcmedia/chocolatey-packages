$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/2212ba80b59e/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-6000.6.0b4.exe'
$checksum64     = '4b1d24bc4eac3d04538642dbb8722292a58694e7d89a3e0b5629fe3eaa2e665b'

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
