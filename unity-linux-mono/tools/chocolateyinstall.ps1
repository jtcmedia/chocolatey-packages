$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/9dce81d9e7e0/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2023.1.5f1.exe'
$checksum64     = '3f727e03949fc66ac7463ee98809a3e33211389fda5fa3c5a1ef8504e62ebaaa'

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
