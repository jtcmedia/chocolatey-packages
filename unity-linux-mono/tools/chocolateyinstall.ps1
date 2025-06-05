$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/eb7dd46c99ad/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-6000.2.0b4.exe'
$checksum64     = 'a56964826a31386ac3bb1a78fa2f69973ecd05444ec2210282d46cbe7dc4497f'

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
