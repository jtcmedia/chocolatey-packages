$ErrorActionPreference = 'Stop';

$packageName    = 'unity-webgl'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/e2c53f129de5/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2020.2.5f1.exe'
$checksum64     = '9e6030adaa83c3af2aca81a8476caa24a7b72480209cfb914dfe66085a03dcdb'

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
