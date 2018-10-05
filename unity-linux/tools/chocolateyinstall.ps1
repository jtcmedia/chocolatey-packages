$ErrorActionPreference = 'Stop';

$packageName    = 'unity-linux'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/38bd7dec5000/TargetSupportInstaller/UnitySetup-Linux-Support-for-Editor-2018.2.11f1.exe'
$checksum64     = '31af5576bc7f78ca62339f5b3511209aa92e52ae0e80d2ae776f13129ea6eeeb'

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
