$ErrorActionPreference = 'Stop';

$packageName    = 'unity-samsungtv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://beta.unity3d.com/download/472613c02cf7/TargetSupportInstaller/UnitySetup-Samsung-TV-Support-for-Editor-2017.1.0f3.exe'
$checksum64     = '2ed9dd6ad858fafa0aa71b1060a0f17b062431ffd2ea5fd3be5a6e205def9327'

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
