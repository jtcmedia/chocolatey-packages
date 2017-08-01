$ErrorActionPreference = 'Stop';

$packageName    = 'unity-facebook'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://beta.unity3d.com/download/472613c02cf7/TargetSupportInstaller/UnitySetup-Facebook-Games-Support-for-Editor-2017.1.0f3.exe'
$checksum64     = '8ebed5076e25aafae4bac2c3e66a2398b1dd117671e8a9263b5dbdd024a923fc'

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
