$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/be552157821d/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2021.1.20f1.exe'
$checksum64     = '6b86709026cbf6976ebedeff0b25531c8dca26c1145e2d00eae1e98ded748922'

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
