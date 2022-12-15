$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/4fead5835099/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2022.2.1f1.exe'
$checksum64     = 'b0f51a85a55d33ff53eba6b584574d6c33d8a4edd10ce1cb6af48de3c525300e'

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
