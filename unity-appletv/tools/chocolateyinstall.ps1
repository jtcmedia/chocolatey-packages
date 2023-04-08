$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/5ef4f5b5e2d4/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2020.3.47f1.exe'
$checksum64     = 'aebece1d44ca90fcc22c8de998645d38712cefc008f1936ba83fcbb01680f085'

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
