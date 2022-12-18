$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/75bff06b76bf/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2020.3.43f1.exe'
$checksum64     = '44a33d83bb6e8860c616d89d3b7fd0261f24190869bc8305a1a3f99b7c3afb4d'

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
