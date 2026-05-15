$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/9be2869246c2/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-6000.5.0b8.exe'
$checksum64     = 'c554f8b774979659f3622f0a09fd6d978e679dc307a94bfe15d9c96930cdf31e'

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
