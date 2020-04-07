$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/4ba98e9386ed/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2019.3.8f1.exe'
$checksum64     = '1418fb95762500895529d5ffb069d3d932fe7e3851e3e12ea9e275be597b0178'

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
