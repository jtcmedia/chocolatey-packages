$ErrorActionPreference = 'Stop';

$packageName    = 'unity-metro'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/b9898e2d04a4/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-2019.2.16f1.exe'
$checksum64     = 'c1c3924bdcf35290e48fcf21a831d179be215d2abe2845965ea4d68d6e1a2a42'

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
