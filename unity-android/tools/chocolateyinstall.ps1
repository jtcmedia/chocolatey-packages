$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/d535843d11e1/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2022.2.16f1.exe'
$checksum64     = '68daf97809a91f86a3e2008c8f2787511addafd9754bf8af942ce5fb13b3b192'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'EXE'
  url64bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
