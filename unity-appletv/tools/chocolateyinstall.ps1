$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/c0fade0cc7e9/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2021.1.6f1.exe'
$checksum64     = '74342731b7a9a7298f32fe487de0ab17b58045d7e885e16c4b23822e121a2cb4'

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
