$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/0c6e675195cf/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2021.2.18f1.exe'
$checksum64     = '4a134e5e479e559df6e09e95d563550a9aeed5cf7e15f2a842edc196d6147a63'

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
