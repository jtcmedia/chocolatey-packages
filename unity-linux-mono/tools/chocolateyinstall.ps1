$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/dbb3f7c5b5c6/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2022.3.23f1.exe'
$checksum64     = '3cae39bf08371b520ca99a355cebab805454c548441384a5d4cbc32883c21100'

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
