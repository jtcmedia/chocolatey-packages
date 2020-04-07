$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/4ba98e9386ed/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2019.3.8f1.exe'
$checksum64     = 'dd629acbd61c73b17f7125df3d33cef8cfef7fdb22371e878817843ab27c73db'

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
