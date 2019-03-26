$ErrorActionPreference = 'Stop';

$packageName    = 'unity-metro'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/f88de2c96e63/TargetSupportInstaller/UnitySetup-UWP-.NET-Support-for-Editor-2018.3.10f1.exe'
$checksum64     = 'bea1737964cba8828ef638264c826cd7b3df8394648566f2fa62916e212c7dc3'

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
