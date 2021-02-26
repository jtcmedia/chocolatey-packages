$ErrorActionPreference = 'Stop';

$packageName    = 'unity-linux'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/8a2143876886/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2020.2.6f1.exe'
$checksum64     = '6f43ed22707b4a64d6216f7a2cf455b214bca9fbdb888370420564b38b61c68e'

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
