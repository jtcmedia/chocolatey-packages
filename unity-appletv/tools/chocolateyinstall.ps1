$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/f04f5427219e/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2019.1.12f1.exe'
$checksum64     = 'c3174d0c15e85a8395e132348bea8bdebc2d2ec927991556de0843344a1127ad'

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
