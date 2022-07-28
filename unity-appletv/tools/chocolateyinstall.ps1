$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/09bebd6e9324/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2022.1.11f1.exe'
$checksum64     = 'f65e805d2607c09ccab550b9e32b071deed9c72328e56d53b07348b11e5c9fe0'

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
