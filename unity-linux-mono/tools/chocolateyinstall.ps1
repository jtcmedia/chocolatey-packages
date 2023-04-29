$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/54cb9bda89c4/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2022.2.17f1.exe'
$checksum64     = '0ee2376ff3daa3bd86378124cfee546f0e30d43a4034c814948e73e30526e7a7'

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
