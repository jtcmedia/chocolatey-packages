$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/eb7dd46c99ad/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-6000.2.0b4.exe'
$checksum64     = 'd9f634b9fa96985414e328e01775e44d6d4a5036846068170bf2f1c43ae96563'

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
