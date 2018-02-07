$ErrorActionPreference = 'Stop';

$packageName    = 'unity-metro'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/fc1d3344e6ea/TargetSupportInstaller/UnitySetup-Metro-Support-for-Editor-2017.3.1f1.exe'
$checksum64     = '0e7794af6d994b85f3002c5772cad6d4db954cecccd8a5337f5811f256cb5e53'

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
