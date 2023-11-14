$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/35a524b12060/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2023.1.20f1.exe'
$checksum64     = '3d22291150b1ee6e9e6b0ea536aefa2a7ce3de421c22aab846b3720f46b0b689'

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
