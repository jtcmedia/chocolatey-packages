$ErrorActionPreference = 'Stop';

$packageName    = 'unity-webgl'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/4d8c25f7477e/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2021.1.11f1.exe'
$checksum64     = '0158dbfdc1330ec68d95c83c9384528690560ae5717353ebc8e06bb78cb2b5b9'

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
