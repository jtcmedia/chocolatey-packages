$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/6bc6fbc26ac6/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-6000.2.0a8.exe'
$checksum64     = '3a0902c41c5cdcea8ed1e61abb82d95622bfc66e9d9e556009e9bb0dd3225c68'

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
