$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/6a1e21c61430/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2023.2.11f1.exe'
$checksum64     = '9af2702150610ae62206f1a9abe30e345cf91ef6bcc2c78a0ff29c80e1244f14'

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
