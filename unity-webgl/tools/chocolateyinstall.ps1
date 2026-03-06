$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/d36222f39966/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-6000.5.0a8.exe'
$checksum64     = '47f804475f9d8178dff17ab144769065e807d5d1a9a4190e6fc5c00792947cdc'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'EXE'
  url64bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
