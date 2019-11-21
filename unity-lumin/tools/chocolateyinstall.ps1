$ErrorActionPreference = 'Stop';

$packageName    = 'unity-lumin'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/e20f6c7e5017/TargetSupportInstaller/UnitySetup-Lumin-Support-for-Editor-2019.2.13f1.exe'
$checksum64     = 'dd4037336e148c50c6156681f6165a26cb98fa156d5531aed6cb4583296781d2'

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
