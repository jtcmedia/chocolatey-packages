$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/f18e0c1b5784/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2022.3.1f1.exe'
$checksum64     = 'e7b1095fa096c6a8fcd4f4e70cbf56b10c540ed3a88fb7e86393aaf725d8982c'

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
