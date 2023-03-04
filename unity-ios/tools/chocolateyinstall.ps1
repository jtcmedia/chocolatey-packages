$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/577897200b8b/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2021.3.20f1.exe'
$checksum64     = '68478a90839f784716ea6eb12f76df79741d07de2f2c236e166c36e238aa74ef'

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
