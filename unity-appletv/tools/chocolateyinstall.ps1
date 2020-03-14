$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/d691e07d38ef/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2019.3.5f1.exe'
$checksum64     = '174824565d2bedc5e52b3c68729c16e26666c54f100aea086322c7aa10782e5a'

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
