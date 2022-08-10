$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/b30333d56e81/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2021.3.8f1.exe'
$checksum64     = 'a3ff206cecad585336edad5b35c4b076f7297c66e9267dcb9a98456c5b4f5b6a'

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
