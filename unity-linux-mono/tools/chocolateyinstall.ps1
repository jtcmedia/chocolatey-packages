$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/97272b72f107/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-6000.0.43f1.exe'
$checksum64     = '8bf79383b7474c9940c940594e128a766a346fea8095c6bff1f5d3ba710e7904'

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
