$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/feea5ec8f162/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2022.1.5f1.exe'
$checksum64     = '2770c06c305c74e870cc607b055021933d06672dfcfb3bf9942c44f89e2ad282'

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
