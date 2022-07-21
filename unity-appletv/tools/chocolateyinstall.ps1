$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/9aa0f82c4f96/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2022.1.10f1.exe'
$checksum64     = 'c5eeeed8ecf43501894374c5bd3c1ecb78751e6dc19e0f71394bbad044eb2720'

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
