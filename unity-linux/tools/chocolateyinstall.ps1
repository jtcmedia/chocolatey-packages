$ErrorActionPreference = 'Stop';

$packageName    = 'unity-linux'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/3071d1717b71/TargetSupportInstaller/UnitySetup-Linux-Support-for-Editor-2018.2.5f1.exe'
$checksum64     = '3030a761f3c5e31d06163f238c1210d35a7cdbf5fb81dbe2d43ab05c20f9746f'

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
