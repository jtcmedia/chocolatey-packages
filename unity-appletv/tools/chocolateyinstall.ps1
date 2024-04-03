$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/7f45223012db/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2023.2.16f1.exe'
$checksum64     = '019219eea35870b89be802b64ab29f0b480626dce7ca655bd38578fb2bd8d718'

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
