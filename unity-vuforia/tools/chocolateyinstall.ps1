$ErrorActionPreference = 'Stop';

$packageName    = 'unity-vuforia'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/bb579dc42f1d/TargetSupportInstaller/UnitySetup-Vuforia-AR-Support-for-Editor-2018.3.1f1.exe'
$checksum64     = 'f4e1ce6a73be5c0f7543cf282bd4668d5146b98653e885df862cc0aa42de7ec5'

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
