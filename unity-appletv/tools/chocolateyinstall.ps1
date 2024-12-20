$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/b2e806cf271c/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-6000.0.32f1.exe'
$checksum64     = '633f9649b18b1d87528c7fbcf345d7234a97b151766fea8b57f94f210f37f298'

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
