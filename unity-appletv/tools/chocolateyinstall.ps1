$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/38370f5b2257/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2023.1.12f1.exe'
$checksum64     = 'be66b3113708da76e9e8e7d2b92bc18ac9898edd1a4f38cdc950ae061ae3119f'

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
