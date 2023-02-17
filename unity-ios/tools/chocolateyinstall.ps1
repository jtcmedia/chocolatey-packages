$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/660cd1701bd5/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2020.3.45f1.exe'
$checksum64     = 'daa1e9e00d02de1f75e9d8b63f5c95e7fa6b5b6d6c741c7073e77b8ac864cdbb'

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
