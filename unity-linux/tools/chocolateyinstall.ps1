$ErrorActionPreference = 'Stop';

$packageName    = 'unity-linux'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/f880dceab6fe/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2019.4.3f1.exe'
$checksum64     = '1d30ab5d512e288002845ee32e59ba6475689f1bcb581d7cfc4a983773bf1ca6'

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
