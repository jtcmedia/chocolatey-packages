$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/75bff06b76bf/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2020.3.43f1.exe'
$checksum64     = '925472e62f991dde4fe449a00ee14ad2ac2d3cc91c7644063ed800aa82cd10a0'

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
