$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/fa717bb873ec/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2020.1.4f1.exe'
$checksum64     = '0c3d872757068416493a6eab4cd54da2f2b5a7ac5ff2852612ba15b5fbb9f8cb'

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
