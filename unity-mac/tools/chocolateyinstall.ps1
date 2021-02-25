$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/8a2143876886/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2020.2.6f1.exe'
$checksum64     = '385a236fb0a5bb758e41a19984b268c0102edbb3432312144f224fb3dab5dacc'

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
