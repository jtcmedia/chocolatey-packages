$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/629111e352bc/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2023.1.19f1.exe'
$checksum64     = '4a3b8d5ac74e8aa8cf5e449874614cae54785fe228b2ddd66c6b43f81f734ca9'

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
