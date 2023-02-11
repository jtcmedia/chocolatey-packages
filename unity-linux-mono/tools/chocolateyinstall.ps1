$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/10bfa6201ced/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2022.2.6f1.exe'
$checksum64     = '98ffdb482cd48d5fbe4643254a69727ed1c299b1fdbeaee36d4c4398e0f97ca4'

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
