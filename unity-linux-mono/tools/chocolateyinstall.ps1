$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/964b2488c462/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2023.1.6f1.exe'
$checksum64     = '086ecf43507971d99e9bc293aecedf7f8d4c1186bc766031f54aec88b075b0c7'

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
