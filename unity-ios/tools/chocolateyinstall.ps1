$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/6437fd74d35d/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2019.3.7f1.exe'
$checksum64     = '4c5aaa985cf924383453ffd60f2c8073fd0ce85e27cd8805f6d854093b61752d'

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
