$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/d91830b65d9b/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2021.1.7f1.exe'
$checksum64     = '19b5a0faea3f539366638d612faa8437395f75e30669658a44c4e90ae2737d8f'

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
