$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/32358a8527b4/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2021.2.3f1.exe'
$checksum64     = '80348e5c808f4b62dafcad001e9a9adb4c406c185cef09222f66fbc6a47f1b14'

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
