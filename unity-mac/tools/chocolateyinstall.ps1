$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/51d2f824827f/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2021.1.14f1.exe'
$checksum64     = '4c99da6a9ce9d00ab1b6b5541a76e227a5eed7f7fcb51286880454ad62277742'

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
