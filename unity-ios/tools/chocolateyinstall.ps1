$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/b15f561b2cef/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2021.1.10f1.exe'
$checksum64     = 'a4854ef62c6663ad478c0b8906631e931618fdca608f1d0bfde5991d14635feb'

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
