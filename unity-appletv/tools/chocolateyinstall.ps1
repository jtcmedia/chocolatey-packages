$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/e20f6c7e5017/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2019.2.13f1.exe'
$checksum64     = '320eda9f236e2050145dff91759e254d6c02d2bb2c4cf9c90a337a903e4673e9'

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
