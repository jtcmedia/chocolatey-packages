$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/f88de2c96e63/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2018.3.10f1.exe'
$checksum64     = '1bd4dfd7d667521945d3d2c0de45ede84900ace087a5f8c2add6c0b4ab2e99d4'

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
