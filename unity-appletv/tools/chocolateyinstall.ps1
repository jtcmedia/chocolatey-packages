$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/99ba6aa4c552/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2021.2.4f1.exe'
$checksum64     = '547634b2b1d8e16498ce81423fd8fe8f272492769b33d60a55343782d1ba3d52'

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
