$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/faa32412f6c9/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-6000.1.15f1.exe'
$checksum64     = '19d1c72cc34c11d650691847e6d63de774071edc665394b2e406eda65d7db87d'

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
