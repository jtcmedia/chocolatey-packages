$ErrorActionPreference = 'Stop';

$packageName    = 'unity-webgl'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/4bef613afd59/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2021.1.3f1.exe'
$checksum64     = 'c4a268f7f02f3dba02a467020821ee44aab889363fe2aa7a39415e48fe162697'

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
