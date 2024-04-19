$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/530ae0ba3889/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2022.3.25f1.exe'
$checksum64     = '39f0a8d2e8e6a511e59a4258f5c13fbdb84ccc1ebd84b9b278d40005d00f114a'

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
