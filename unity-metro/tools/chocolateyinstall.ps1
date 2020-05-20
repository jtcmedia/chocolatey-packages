$ErrorActionPreference = 'Stop';

$packageName    = 'unity-metro'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/2b330bf6d2d8/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-2019.3.14f1.exe'
$checksum64     = 'e10e48b4218fd01a37ec206b3ad1ec7630809547ecc18e3253e0371fa525bb13'

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
