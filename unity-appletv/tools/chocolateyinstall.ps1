$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/05208a74e9aa/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-6000.0.20f1.exe'
$checksum64     = '8e11ce1acfb9a2aaefa2f83da644fc14f5414dc19fe6b7aceec2e86411da3231'

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
