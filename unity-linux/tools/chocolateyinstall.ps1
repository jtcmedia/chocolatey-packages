$ErrorActionPreference = 'Stop';

$packageName    = 'unity-linux'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/25bdc3efbc2d/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2021.1.18f1.exe'
$checksum64     = '948135e8b5d0767620b3ebb24a522f2cfc95df70725782d889e2c00576b179a9'

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
