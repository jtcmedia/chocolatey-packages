$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/765657fe9343/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2022.2.19f1.exe'
$checksum64     = '1f9414cdfcde86d292ff69098759acd9d888ef7a5441e62c8e4df20d38ae2880'

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
