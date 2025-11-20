$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/abdb44fca7f7/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-6000.2.13f1.exe'
$checksum64     = '76a08c9a3afa7d39268def94303a7f19e0060525def7f96c1f125916a35ed182'

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
