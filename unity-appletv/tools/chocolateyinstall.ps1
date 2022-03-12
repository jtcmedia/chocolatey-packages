$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/3b8567f665bb/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2021.2.15f1.exe'
$checksum64     = 'c663f69cc036152f6616ed71a7e0825f19e904c91a9f8960b8b3cd4ff8f319c1'

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
