$ErrorActionPreference = 'Stop';

$packageName    = 'unity-facebook'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/292b93d75a2c/TargetSupportInstaller/UnitySetup-Facebook-Games-Support-for-Editor-2019.1.0f2.exe'
$checksum64     = 'be43b879c8092c6d613c8602fdcf3f9392adb66916a9ca5d5dd4893f51488aac'

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
