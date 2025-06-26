$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/f57a55ac740d/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-6000.2.0b7.exe'
$checksum64     = '4f45f39e853d3d4fd667c844b9f8456e9bab29ce81ec415f29c1761034f9cb39'

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
