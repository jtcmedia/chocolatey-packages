$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/5c3fb0a11183/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2019.3.6f1.exe'
$checksum64     = '052df41deba655814396f1a9dd5b9893446b89812ed75d55434bb3850bdb5b4d'

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
