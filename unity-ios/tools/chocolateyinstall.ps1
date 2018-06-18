$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/732dbf75922d/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2018.1.5f1.exe'
$checksum64     = '161146b303291c0798a1295326ad714e6f9d0fa7a9daa7ae62340c4a4beff32b'

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
