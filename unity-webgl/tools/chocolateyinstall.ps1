$ErrorActionPreference = 'Stop';

$packageName    = 'unity-webgl'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/6667702a1e7c/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2021.1.24f1.exe'
$checksum64     = '1facbc6f1b4675353de66a16234af5eff5ed518b18c9787f8cb8fc31f80afac2'

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
