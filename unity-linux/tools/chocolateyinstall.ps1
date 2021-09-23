$ErrorActionPreference = 'Stop';

$packageName    = 'unity-linux'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/a137e5fb0427/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2021.1.22f1.exe'
$checksum64     = 'f87a6096a4aea8d0cfffc29ce796f5c43cd22a2b50f5c138b74af9455b4fccf5'

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
