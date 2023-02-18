$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/c9714fde33b6/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2021.3.19f1.exe'
$checksum64     = '4f1ca405e9c9b3a95027c7b96c969fa1e90fea8b2884b09c22285f2bde23761d'

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
