$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/22856944e6d2/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2022.1.13f1.exe'
$checksum64     = '4dbe95fdbf3765ac5128a4559c3200cf216ca19a372ef236a830af95c71f0fe7'

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
