$ErrorActionPreference = 'Stop';

$packageName    = 'unity-metro'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/94bf3f9e6b5e/TargetSupportInstaller/UnitySetup-Metro-Support-for-Editor-2017.2.1f1.exe'
$checksum64     = 'c7a4553220f86149bc825a47968b8681d141bbf304d66f4853edf29e5bc5c8eb'

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
