$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/a53ad04f7c7f/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2018.1.3f1.exe'
$checksum64     = '91f3fa54b4ebebf5269fda7658fb6119c419996e955b10f930284c97efa64f4f'

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
