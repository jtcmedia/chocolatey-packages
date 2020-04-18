$ErrorActionPreference = 'Stop';

$packageName    = 'unity-linux'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/5968d7f82152/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2019.3.10f1.exe'
$checksum64     = 'b108f8f4ecf5e8511bb0af9f98f4abe074ad9d92e7bbc7e3ceca58a3defb9aef'

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
