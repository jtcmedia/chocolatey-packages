$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/7da38d85baf6/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2021.3.6f1.exe'
$checksum64     = '008bbea08e25f5b72ba0c42d582214652d6a520e0a09066e218a4f591a6fa8d8'

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
