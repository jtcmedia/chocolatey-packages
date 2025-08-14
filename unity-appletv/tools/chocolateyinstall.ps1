$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/67bef3276ff1/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-6000.1.16f1.exe'
$checksum64     = '3c50a18ce2a1cf88eb81a848314781a7c59c45c8068987cd2eb9f0d21e735aac'

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
