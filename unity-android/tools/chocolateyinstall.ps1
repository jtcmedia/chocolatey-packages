$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/83fbdcd35118/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2018.2.13f1.exe'
$checksum64     = 'ca407bf67a5a91747337ad2c13544fdfa98553e36c6ac59ed2316c77bd6ba8e9'

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
