$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/7134d7685e5d/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-6000.2.11f1.exe'
$checksum64     = 'b824ae520ef346e95bb161c21610cf306305ac092af63caa9074296738bc2da6'

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
