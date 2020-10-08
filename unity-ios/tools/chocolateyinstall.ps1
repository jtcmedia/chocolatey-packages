$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/22e8c0b0c3ec/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2020.1.8f1.exe'
$checksum64     = '44e1e3fe67c87609dda425d53b17d494962ee311f8f5a27f446e013477976345'

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
