$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/9957aee8edc2/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2020.1.17f1.exe'
$checksum64     = '4b68bc0356574d10f49e08b72d32053ca85b93a18f6e46374d34512c063fff81'

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
