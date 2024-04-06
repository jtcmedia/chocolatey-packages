$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/dbb3f7c5b5c6/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2022.3.23f1.exe'
$checksum64     = 'ad285869c819d7ab965fee0d95bb51863eba95c05a3bf63621dc76330d62a4bd'

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
