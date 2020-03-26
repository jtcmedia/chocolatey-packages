$ErrorActionPreference = 'Stop';

$packageName    = 'unity-linux'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/6437fd74d35d/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2019.3.7f1.exe'
$checksum64     = '6c2405cc5283d8cb490c786dbffe1a4a2fe2770f092adc5fca059100dde8dcb0'

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
