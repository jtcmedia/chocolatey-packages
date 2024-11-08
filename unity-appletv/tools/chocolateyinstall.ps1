$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/ccb7c73d2c02/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-6000.0.26f1.exe'
$checksum64     = 'e0dd2c552bb51bd2547d99eb4075a7a66bc5283023bbea6335f192050b74e3c3'

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
