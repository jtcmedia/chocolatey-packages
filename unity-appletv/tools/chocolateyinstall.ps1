$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/064ffcdb64ad/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2020.1.7f1.exe'
$checksum64     = '564d5478a70fa4347d7a446ee5d553e22a3e950cf403fb080078692b124aa8b9'

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
