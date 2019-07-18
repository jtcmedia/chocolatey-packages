$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/f007ed779b7a/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2019.1.10f1.exe'
$checksum64     = '1ffc5eae54a2501cc12f1a46797cd4d9d3f089757ae44a2c4796b0fc3ab785a9'

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
