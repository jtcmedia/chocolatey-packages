$ErrorActionPreference = 'Stop';

$packageName    = 'unity-linux'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/ffa3a7a2dd7d/TargetSupportInstaller/UnitySetup-Linux-Support-for-Editor-2019.1.4f1.exe'
$checksum64     = 'ad440a6d5d62d6c6dffb2b575360d78f89798ced8c192796a66b954fae072f13'

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
