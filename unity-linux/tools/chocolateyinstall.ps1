$ErrorActionPreference = 'Stop';

$packageName    = 'unity-linux'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/d691e07d38ef/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2019.3.5f1.exe'
$checksum64     = '53d7f9ab24bd3f12e63ca4209dbde775730fcab67cc86ec5ebe71748ab43d5fa'

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
