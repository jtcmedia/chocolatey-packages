$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/bbf64de26e34/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2019.2.18f1.exe'
$checksum64     = 'c36be00a4f9f1ca7fcec1cfd9021d39b3f99a46b181e087894a810a7204ab6f6'

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
