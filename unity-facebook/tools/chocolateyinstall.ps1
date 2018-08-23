$ErrorActionPreference = 'Stop';

$packageName    = 'unity-facebook'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/3071d1717b71/TargetSupportInstaller/UnitySetup-Facebook-Games-Support-for-Editor-2018.2.5f1.exe'
$checksum64     = '03e2ef95012ea7791923bca03e0ce9d84e3d3c5dd34a0f0aa71f0d0539688fe9'

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
