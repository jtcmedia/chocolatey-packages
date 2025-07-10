$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/9b156bbbd4df/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-6000.1.11f1.exe'
$checksum64     = '07874f099c383f8ef0a56516c2d2c0de12c1be0f10b13be3de56cb656eafd6c5'

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
