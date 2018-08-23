$ErrorActionPreference = 'Stop';

$packageName    = 'unity-metro'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/3071d1717b71/TargetSupportInstaller/UnitySetup-UWP-.NET-Support-for-Editor-2018.2.5f1.exe'
$checksum64     = 'f8898efb910e33682a80c3c3d2381a888b05f7b85963628fabb32e2e02b77c7a'

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
