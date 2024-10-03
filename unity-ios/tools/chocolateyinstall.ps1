$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/4dae1bb8668d/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2022.3.49f1.exe'
$checksum64     = '3d3ef0d3b1ef7baac46ce5a98f52aec70409a53c67f6af73f2f0ed354c012b3d'

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
