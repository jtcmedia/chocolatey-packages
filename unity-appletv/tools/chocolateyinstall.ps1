$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/a220877bc173/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2018.3.6f1.exe'
$checksum64     = '71ef673a0d28833e25b979b1135f1aac462d1b0dd71762785cd68ab30270699e'

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
