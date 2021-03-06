$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/c53830e277f1/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2020.2.7f1.exe'
$checksum64     = 'a03d75e60475072f19bd886830b073460a83f2a317625856c09565f4b0f397e4'

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
