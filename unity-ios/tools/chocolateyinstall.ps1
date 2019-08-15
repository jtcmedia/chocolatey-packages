$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/ca4d5af0be6f/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2019.2.1f1.exe'
$checksum64     = 'e2ed99007a6378dfd829514b784328a98b1af281ece0872aa8b62bfdc96301f5'

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
