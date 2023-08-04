$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/4f4e359ec3fc/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2023.1.7f1.exe'
$checksum64     = '16df59054f6f609e881b413ac18377253471c975344f97fcde349cc4c477422e'

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
