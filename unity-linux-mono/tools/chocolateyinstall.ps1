$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/316c1fd686f6/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2023.2.10f1.exe'
$checksum64     = '99c96ec5180d58342da395d7c677ddd8b5dfd5e41f90bab50698c7cf649d4902'

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
