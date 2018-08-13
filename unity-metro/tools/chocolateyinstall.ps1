$ErrorActionPreference = 'Stop';

$packageName    = 'unity-metro'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/1431a7d2ced7/TargetSupportInstaller/UnitySetup-UWP-.NET-Support-for-Editor-2018.2.3f1.exe'
$checksum64     = '47baf847f223580cf2b052d5e1dc5265349c86f3c862b75654c642a4d30a8102'

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
