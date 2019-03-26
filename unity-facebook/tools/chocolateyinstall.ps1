$ErrorActionPreference = 'Stop';

$packageName    = 'unity-facebook'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/f88de2c96e63/TargetSupportInstaller/UnitySetup-Facebook-Games-Support-for-Editor-2018.3.10f1.exe'
$checksum64     = '7720ea9c644b7bfd664939867a98dd8f2d45f849e44dfb73b9f74af3648db56f'

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
