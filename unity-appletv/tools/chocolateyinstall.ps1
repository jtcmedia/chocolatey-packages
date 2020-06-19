$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/e6c045e14e4e/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2019.4.1f1.exe'
$checksum64     = '1ef8f9c6ccf353c9bf1ddcad5291f69261e9863148c308c24abbc7e696317a0e'

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
