$ErrorActionPreference = 'Stop';

$packageName    = 'unity-lumin'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/4d8c25f7477e/TargetSupportInstaller/UnitySetup-Lumin-Support-for-Editor-2021.1.11f1.exe'
$checksum64     = 'b62a1dbb880284e9c1cc9a5cc9183c8b72b9426df1aab4d0ee3f8fe320829fec'

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
