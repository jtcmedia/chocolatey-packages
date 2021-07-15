$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/e767a7370072/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2021.1.15f1.exe'
$checksum64     = 'e5f008768801ee1ab6d32eb9ebb27e4cb748ba73b54601170b4df258f4d6ca9e'

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
