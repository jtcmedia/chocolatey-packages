$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/48b1aa000234/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2021.2.12f1.exe'
$checksum64     = 'c5f775af9c4ab739a791f49bab15cafec2c69217dd4305fd4001c8d5b0ff0d9d'

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
