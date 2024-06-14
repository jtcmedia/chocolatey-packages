$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/17028576122a/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-6000.0.5f1.exe'
$checksum64     = '9392cc50f1fc5785bd042e5ff8445dc32674f7ecd390f664f8d9e1d18a6bffc2'

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
