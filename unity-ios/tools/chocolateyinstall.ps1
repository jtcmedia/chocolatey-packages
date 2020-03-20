$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/5c3fb0a11183/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2019.3.6f1.exe'
$checksum64     = '23a8d02ee25869a84d179ac60a6ddfe3243b6c6f73a26ff2c50af33f32e3fbf0'

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
