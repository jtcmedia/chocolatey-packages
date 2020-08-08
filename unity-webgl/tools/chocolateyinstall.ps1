$ErrorActionPreference = 'Stop';

$packageName    = 'unity-webgl'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/2285c3239188/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2020.1.1f1.exe'
$checksum64     = 'da86c71b295b91beeeed0101e1bdd0960de24f5c075a496b1bdd59983a6e7929'

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
