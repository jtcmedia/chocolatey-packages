$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/3737af19df53/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2021.1.5f1.exe'
$checksum64     = '32b5e0cda19b9ea144672b8ee2361b9b4e02ba183b5c37bee91fe8d50bd70346'

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
