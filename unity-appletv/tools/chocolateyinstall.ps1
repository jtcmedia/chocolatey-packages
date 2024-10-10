$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/c3db7f8bf9b1/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2022.3.50f1.exe'
$checksum64     = '82604b2f8eb679fa7f93f3bbecbd01e8477a901eb1a170ac2efd4e96f64b4d80'

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
