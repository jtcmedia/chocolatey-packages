$ErrorActionPreference = 'Stop';

$packageName    = 'unity-webgl'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/84b23722532d/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2019.3.12f1.exe'
$checksum64     = 'db39ecb8c7a0ccc188206e281bc70a878e6d7a90b6b72316169b995af23da6fa'

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
