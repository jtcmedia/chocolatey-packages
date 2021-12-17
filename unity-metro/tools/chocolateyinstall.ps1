$ErrorActionPreference = 'Stop';

$packageName    = 'unity-metro'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/6bd9e232123f/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-2021.2.7f1.exe'
$checksum64     = '98bcfd8748a00d3d15e20eac9005fc0f2d206dffbbd9993114aaea6139369795'

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
