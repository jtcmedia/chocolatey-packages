$ErrorActionPreference = 'Stop';

$packageName    = 'unity-facebook'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/cc85bf6a8a04/TargetSupportInstaller/UnitySetup-Facebook-Games-Support-for-Editor-2017.1.2f1.exe'
$checksum64     = '7fa8b6a48d87892c338ddcf73b404c40eac4718bf47958f73558f98b15f03ca5'

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
