$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/d4ddf0d95db9/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2019.3.13f1.exe'
$checksum64     = 'caaa8af6f9457124f6f8fbe589bc84cab26f7b506f3646dcd27e06157baab110'

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
