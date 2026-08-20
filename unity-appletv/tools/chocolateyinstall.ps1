$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/b57deb96f08d/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-6000.5.9f1.exe'
$checksum64     = '07c935b9e6d723f550c191d3ec19f95743e8aec6c6d25c50c53b3e5db8593ff2'

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
