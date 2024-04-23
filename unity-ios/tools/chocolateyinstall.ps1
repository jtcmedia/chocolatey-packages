$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/95c298372b1e/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2023.2.19f1.exe'
$checksum64     = 'bbc748c40265545375dae3aa15a22ab746643ae44269684c2080e3dae62c5f19'

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
