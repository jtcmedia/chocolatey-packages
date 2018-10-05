$ErrorActionPreference = 'Stop';

$packageName    = 'unity-facebook'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/38bd7dec5000/TargetSupportInstaller/UnitySetup-Facebook-Games-Support-for-Editor-2018.2.11f1.exe'
$checksum64     = '0940b4cf53b0fd600b312e639b2bd3175583783ce743c30af6321930c0b57773'

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
