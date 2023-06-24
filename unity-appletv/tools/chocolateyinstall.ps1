$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/46620eadcc07/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2023.1.1f1.exe'
$checksum64     = '71d440d242aec9d28fa71bf82e5f2a89225c3512f0f8a06c6fad778f3a409ca3'

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
