$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/97d0ae02d19d/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2020.1.15f1.exe'
$checksum64     = '2223ec0d6c9f73640856cb82218b29f7c3b8ccca4f81eb839fea150f16918335'

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
