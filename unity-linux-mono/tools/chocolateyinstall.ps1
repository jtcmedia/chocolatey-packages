$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/6eacc8284459/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2021.3.0f1.exe'
$checksum64     = 'f63eb24c7a32f4a7bd1b698b57f265b959e3de72f81e538d1233a5ed6ad5de06'

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
