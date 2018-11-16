$ErrorActionPreference = 'Stop';

$packageName    = 'unity-webgl'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/39a4ac3d51f6/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2018.2.16f1.exe'
$checksum64     = '604de52b4fba85aa41b0481a35404af898aba578ce3682079c3b79846deff9c4'

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
