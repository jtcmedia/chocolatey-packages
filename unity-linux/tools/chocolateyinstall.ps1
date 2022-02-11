$ErrorActionPreference = 'Stop';

$packageName    = 'unity-linux'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/e50cafbb4399/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2021.2.11f1.exe'
$checksum64     = 'fdc3abda62b9b3d96897e8f6e0ead941e2034d0e048aa4b0a6be02ed11760280'

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
