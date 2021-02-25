$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/8a2143876886/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2020.2.6f1.exe'
$checksum64     = 'c9577dfa9ce00bf5dfb5e898defd52b9a231eca3ad3665c1f27f85214f3cef50'

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
