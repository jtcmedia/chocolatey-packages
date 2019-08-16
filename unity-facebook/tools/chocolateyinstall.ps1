$ErrorActionPreference = 'Stop';

$packageName    = 'unity-facebook'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/ca4d5af0be6f/TargetSupportInstaller/UnitySetup-Facebook-Games-Support-for-Editor-2019.2.1f1.exe'
$checksum64     = 'c470ffaf71da1d6c337886bcd57bd9530110c269abdbce98a3f4ac0bb3d3adbd'

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
