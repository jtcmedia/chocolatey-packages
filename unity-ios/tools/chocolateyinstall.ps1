$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/0a9195b3d453/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2023.2.7f1.exe'
$checksum64     = 'c4fb6e5bed480f63fe6c79a12abb8667de627bcfa4b601ef66d840bda642b0f4'

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
