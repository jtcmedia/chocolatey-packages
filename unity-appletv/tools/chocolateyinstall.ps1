$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/e5d502d80fbb/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2021.1.2f1.exe'
$checksum64     = '3ef89560cf612214e37b8edc008241a5e3b8608723870b448ed120b0ffd77b27'

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
