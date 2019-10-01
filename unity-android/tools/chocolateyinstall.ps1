$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/c96f78eb5904/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2019.2.7f2.exe'
$checksum64     = 'd49fc27596da4db771e796cdd5f755f69dc56791a1e2a6e9b6a3326d26ea0a87'

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
