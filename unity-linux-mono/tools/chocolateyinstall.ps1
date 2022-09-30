$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/8a091f9adba4/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2022.1.18f1.exe'
$checksum64     = 'a47c30e24d69d7a6ee553f0acbda8bb334225806c8df09b580837e6883c8efa0'

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
