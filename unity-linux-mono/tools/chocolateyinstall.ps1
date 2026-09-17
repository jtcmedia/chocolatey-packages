$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/7efac9f6c10e/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-6000.6.1f1.exe'
$checksum64     = 'ee7a187af89c2af9d6cb1f56f689ec01dc915edaae93d9288cb750e672a37205'

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
