$ErrorActionPreference = 'Stop';

$packageName    = 'unity-webgl'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/6e9a27477296/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2018.3.0f2.exe'
$checksum64     = '96a100fbb48c9468f5e8ee536900c7b559690f37b031a49773d4aa9d57f04f3b'

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
