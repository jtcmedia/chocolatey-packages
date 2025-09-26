$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/cc51a95c0300/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-6000.2.6f1.exe'
$checksum64     = '4905d08d7bad3b0b23fd7aee9343b0038cfd7bc4c3e156e68b92dcb951f409f5'

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
