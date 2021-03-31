$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/6fdc41dfa55a/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2021.1.1f1.exe'
$checksum64     = '00a93f5600f0a77f48d776c13a89c544817545bd06898194e20d77a185aa35ba'

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
