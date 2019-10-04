$ErrorActionPreference = 'Stop';

$packageName    = 'unity-linux'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/ff5b465c8d13/TargetSupportInstaller/UnitySetup-Linux-Support-for-Editor-2019.2.8f1.exe'
$checksum64     = 'f4e73cf1ef27926da8ddaa4e72b1c55e3fcbe0f2f11d04f5ed45fab387e5fffa'

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
