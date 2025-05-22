$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/03270eb687c6/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-6000.1.4f1.exe'
$checksum64     = '4fd0b3b238c80070fdaf85578b30e58e6f0e244359cc0979b50d6d894fb8e47e'

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
