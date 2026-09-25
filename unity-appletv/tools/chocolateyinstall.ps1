$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/45d8eee7de74/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-6000.6.3f1.exe'
$checksum64     = 'fe0055411e8b86906b961369781a473b8a8f86bf6b5211b3232814fc14140395'

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
