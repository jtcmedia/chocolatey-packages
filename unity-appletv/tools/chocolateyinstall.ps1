$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/7dd95c051e11/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-6000.0.7f1.exe'
$checksum64     = 'a1892c9c51022381177ff9f6dba01f03143fc27610248049f307ee7b6bac743f'

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
