$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/81610f64359c/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2019.4.5f1.exe'
$checksum64     = '3664dac0e6ec167bfee3b073e406ded6ddd3ca8664a4ec3bad3301ec0ecbe1fd'

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
