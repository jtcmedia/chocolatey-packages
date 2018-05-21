$ErrorActionPreference = 'Stop';

$packageName    = 'unity-facebook'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/b8cbb5de9840/TargetSupportInstaller/UnitySetup-Facebook-Games-Support-for-Editor-2018.1.1f1.exe'
$checksum64     = 'e31da5341e6ed9c346ef99d1f85c647f8c3de707f6e2af96a321cb05c5dc2a67'

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
