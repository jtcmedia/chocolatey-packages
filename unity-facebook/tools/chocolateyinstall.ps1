$ErrorActionPreference = 'Stop';

$packageName    = 'unity-facebook'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/8e603399ca02/TargetSupportInstaller/UnitySetup-Facebook-Games-Support-for-Editor-2019.2.17f1.exe'
$checksum64     = '260907a7652ebd92b4f91456536cad0838f4a73bec01c47628d3e31bcbbdf62e'

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
