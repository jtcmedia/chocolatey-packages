$ErrorActionPreference = 'Stop';

$packageName    = 'unity-linux'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/b8cbb5de9840/TargetSupportInstaller/UnitySetup-Linux-Support-for-Editor-2018.1.1f1.exe'
$checksum64     = '60bc0560f7ba4e97838eafc40e63289f24503511dafcb71499a49c08d501928a'

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
