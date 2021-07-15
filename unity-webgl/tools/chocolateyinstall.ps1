$ErrorActionPreference = 'Stop';

$packageName    = 'unity-webgl'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/e767a7370072/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2021.1.15f1.exe'
$checksum64     = '04a6dd1197238e1f20bdd8d3133d9a69a5fb28f1be7af9b3309a22f7f6185948'

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
