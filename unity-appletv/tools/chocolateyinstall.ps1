$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/a137e5fb0427/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2021.1.22f1.exe'
$checksum64     = 'b041348ffb22f65e982bad80944c1f245ff8d00cf56e7b5b83edf0b771277b4d'

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
