$ErrorActionPreference = 'Stop';

$packageName    = 'unity-webgl'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/4ec9a5e799f5/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2021.2.5f1.exe'
$checksum64     = '4fd368d2b84004c8ccd3030128b8c52b7684f62fff95b20cc6976e006d8bdc5e'

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
