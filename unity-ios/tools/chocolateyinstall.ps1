$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/abdb44fca7f7/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-6000.2.13f1.exe'
$checksum64     = '6c0e7b1de786c83be30482f5ae1079123b82f34d98693a63d62470c375c5e552'

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
