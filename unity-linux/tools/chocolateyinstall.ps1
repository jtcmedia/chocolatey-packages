$ErrorActionPreference = 'Stop';

$packageName    = 'unity-linux'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/f04f5427219e/TargetSupportInstaller/UnitySetup-Linux-Support-for-Editor-2019.1.12f1.exe'
$checksum64     = '1c72f9ceef6397a29456433f261adde4a35c3427d2357c06de6c4c9ec38b5b46'

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
