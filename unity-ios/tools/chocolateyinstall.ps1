$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/1cb755715f58/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2023.2.18f1.exe'
$checksum64     = '7cdb9b11b41eca87f62d236b38993cdc8a1870385179c148986e2133f1d3df42'

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
