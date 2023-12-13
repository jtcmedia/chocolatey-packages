$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/21747dafc6ee/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2023.2.3f1.exe'
$checksum64     = '00448dfd92a6167f7d7c74506ecdf099e94410522cb37d37cea949f4b372b638'

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
