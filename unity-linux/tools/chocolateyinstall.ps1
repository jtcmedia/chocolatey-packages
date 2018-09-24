$ErrorActionPreference = 'Stop';

$packageName    = 'unity-linux'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/2207421190e9/TargetSupportInstaller/UnitySetup-Linux-Support-for-Editor-2018.2.9f1.exe'
$checksum64     = '3371d0998fa3316f618796cf2a29f48aeb3fb869cbc5f5f02a259bd605c673a2'

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
