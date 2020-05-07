$ErrorActionPreference = 'Stop';

$packageName    = 'unity-lumin'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/d4ddf0d95db9/TargetSupportInstaller/UnitySetup-Lumin-Support-for-Editor-2019.3.13f1.exe'
$checksum64     = '9ac49b854d76cad8b0c1e2bab3ffbda9b2bf003e53e75044ec311681a495cca7'

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
