$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/1cedbfe38737/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2022.1.3f1.exe'
$checksum64     = 'c4245f4013bfca4fbb30bf514bdbe7998ddec46f9de18e9defbc478578bfe4da'

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
