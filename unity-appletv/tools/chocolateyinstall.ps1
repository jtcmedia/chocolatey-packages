$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/f3f87a02ba54/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-6000.4.0b8.exe'
$checksum64     = '7c7effc6f34ad60a1a68d7a68a632d146f6670c92fbf2b35a407a36877dc5bb9'

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
