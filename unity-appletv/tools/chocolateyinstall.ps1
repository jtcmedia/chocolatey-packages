$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/7c19dc9acfda/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2020.3.41f1.exe'
$checksum64     = '66507015dae496084105a06e5a1948e04eee903d1e4671f5d2cd0edb8cb70c6c'

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
