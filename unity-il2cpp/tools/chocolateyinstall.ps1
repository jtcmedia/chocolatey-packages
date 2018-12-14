$ErrorActionPreference = 'Stop';

$packageName    = 'unity-il2cpp'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/6e9a27477296/TargetSupportInstaller/UnitySetup-UWP-IL2CPP-Support-for-Editor-2018.3.0f2.exe'
$checksum64     = 'f70bd02daaed1941c5a76ec4f57b44c12a97c368d045f9c606fe3a135f84ee72'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'EXE'
  url64bit       = $url64
  checksum       = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
