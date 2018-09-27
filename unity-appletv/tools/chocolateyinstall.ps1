$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/674aa5a67ed5/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2018.2.10f1.exe'
$checksum64     = '744462df22feffc48296cef98f834969a0e4ccce9a87ee3dcbd62b322889a8c5'

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
