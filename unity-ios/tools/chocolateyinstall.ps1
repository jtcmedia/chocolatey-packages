$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/974a9d56f159/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2020.1.10f1.exe'
$checksum64     = '5931138bfefb9ceb947e0b54e04e02dc35c3638c31e8dc5aeefa15f82f202764'

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
