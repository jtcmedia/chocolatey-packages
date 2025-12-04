$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/0707b6d1e918/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-6000.2.15f1.exe'
$checksum64     = 'a92fc8407b600e87107f77d6ca021d80c4f671830762601bba22dc743967d22a'

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
