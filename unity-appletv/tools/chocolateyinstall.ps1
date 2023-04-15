$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/30d813e1a2a9/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2022.2.15f1.exe'
$checksum64     = '0cb797ddd66ee6ef4c2a541558b58f6d06001754c5691e869580216b4939e71d'

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
