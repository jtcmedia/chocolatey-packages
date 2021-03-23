$ErrorActionPreference = 'Stop';

$packageName    = 'unity-linux'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/77a89f25062f/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2020.3.1f1.exe'
$checksum64     = '53192219aed98d9db2ccc2ece5ee13417632019e1537eb515e6da270f881d66c'

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
