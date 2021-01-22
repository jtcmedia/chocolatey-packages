$ErrorActionPreference = 'Stop';

$packageName    = 'unity-linux'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/068178b99f32/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2020.2.2f1.exe'
$checksum64     = '07328370a1fd3b9ba74198f1453aabeea26ef17311d59c7859e5efb64ecff6a4'

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
