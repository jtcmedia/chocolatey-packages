$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/145f5172610f/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2020.1.9f1.exe'
$checksum64     = '3f80ff0ce37c97255de30502e8dad0a72f88aac63a98e553dda566ec8bef07fe'

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
