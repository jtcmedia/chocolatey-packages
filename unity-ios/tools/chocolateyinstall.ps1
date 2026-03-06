$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/d36222f39966/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-6000.5.0a8.exe'
$checksum64     = 'd730102148619f66d0fff755c39989908c3b54c99e61d345e3f61816593f2ecb'

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
