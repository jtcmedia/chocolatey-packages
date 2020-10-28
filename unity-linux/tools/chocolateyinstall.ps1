$ErrorActionPreference = 'Stop';

$packageName    = 'unity-linux'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/974a9d56f159/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2020.1.10f1.exe'
$checksum64     = '6aec25bcee1edf1fb8b798c8ceb2312d4b7fc0c3d7861a8eb1ee6cb85c062a00'

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
