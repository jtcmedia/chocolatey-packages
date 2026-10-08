$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/3ff58d469c8a/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-6000.6.5f1.exe'
$checksum64     = 'ad68b2b4666cdb9e2e28e3c5e41d576d0978a8fac25be2f886ab4ef5cad65071'

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
