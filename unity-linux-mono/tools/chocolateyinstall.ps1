$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/7c19dc9acfda/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2020.3.41f1.exe'
$checksum64     = '3bf23850fad2dd870158ebf79a8be2b7e529022bccc09b326d2b59e461b2d231'

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
