$ErrorActionPreference = 'Stop';

$packageName    = 'unity-webgl'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/4cd64a618c1b/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2021.1.4f1.exe'
$checksum64     = 'cbb8d7c68e9aa51897f6a04525549f45c9bbaaa475357f04a9e4f25ac01e7cf7'

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
