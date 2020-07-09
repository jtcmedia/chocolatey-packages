$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/f880dceab6fe/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2019.4.3f1.exe'
$checksum64     = '4371df06ab5335b40be0d62c659faa9cd4b652aa1b1da3c4818608ca06a9e659'

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
