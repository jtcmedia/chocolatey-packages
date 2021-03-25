$ErrorActionPreference = 'Stop';

$packageName    = 'unity-lumin'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/61a549675243/TargetSupportInstaller/UnitySetup-Lumin-Support-for-Editor-2021.1.0f1.exe'
$checksum64     = 'c8d386e09d65979d8379dc9b8d7ea396af4b230eb3ad4d5fe9f468606d37765f'

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
