$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/d0e5f0a7b06a/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2021.2.8f1.exe'
$checksum64     = '42c163c04db72ec28bf8e40457f3984e5fc13c1a7afeae58b3a87892af582cf1'

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
