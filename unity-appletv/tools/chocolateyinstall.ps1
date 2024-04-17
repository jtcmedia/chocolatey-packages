$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/1cb755715f58/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2023.2.18f1.exe'
$checksum64     = 'c5292f181b22fd0b3a792c9aaf2d7adbcaf1c1832dc2ab34dcbf9e54401c8c68'

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
