$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/f99f05b3e950/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-6000.0.62f1.exe'
$checksum64     = '4989c7165d7b5604e7865a894387648cc0b6f3e03e74c4d991bc6c54fa9bb588'

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
