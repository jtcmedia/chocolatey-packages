$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/996aee41dc57/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2022.2.8f1.exe'
$checksum64     = 'dd3f2a2c0ac60676f4c6e0bc7ec8f7504f2bbc99868c8e75996b6ceeb2064f0a'

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
