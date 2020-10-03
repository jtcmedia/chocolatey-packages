$ErrorActionPreference = 'Stop';

$packageName    = 'unity-webgl'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/064ffcdb64ad/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2020.1.7f1.exe'
$checksum64     = 'bdd846f2353004ec8b61efec251f109cd24fde40a9848a6f43b5c9b0ce17cabc'

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
