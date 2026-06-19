$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/240d06e2411b/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-6000.6.0a7.exe'
$checksum64     = '68a8b8b6db84868d0af5f9807eedaf88f819ef21e3764d8a2f91c25ee8061be8'

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
