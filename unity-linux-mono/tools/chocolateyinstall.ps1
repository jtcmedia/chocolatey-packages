$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/5f5de2657605/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2022.2.13f1.exe'
$checksum64     = 'b6ba7a77bf901a966dffb548455bd4d70e5dc36b566c6da2e708a7fdd73563e5'

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
