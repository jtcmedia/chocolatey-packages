$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/c20c6d589440/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2021.2.1f1.exe'
$checksum64     = '9647eed4f10596b5ee46853a9253a6195296fe316594628a0803a9e7b631d294'

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
