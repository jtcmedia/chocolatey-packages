$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/84b23722532d/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2019.3.12f1.exe'
$checksum64     = 'dc2c10f61aea6da434125402a5b971a9e6416d966854ec5ecd75bba4e8cd6c74'

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
