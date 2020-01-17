$ErrorActionPreference = 'Stop';

$packageName    = 'unity-facebook'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/bbf64de26e34/TargetSupportInstaller/UnitySetup-Facebook-Games-Support-for-Editor-2019.2.18f1.exe'
$checksum64     = 'ea3740b9c629a79885f65da8454f01996f870eb86e254461b15e0f53ddc9d3a8'

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
