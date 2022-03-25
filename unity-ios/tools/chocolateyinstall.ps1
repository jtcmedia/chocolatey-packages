$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/efb8f635e7b1/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2021.2.17f1.exe'
$checksum64     = '22f8318da63399d84ebbd26d612841593a6fab25d1e4bec51ccbfeefe208eb7c'

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
