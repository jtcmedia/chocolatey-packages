$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/bb579dc42f1d/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2018.3.1f1.exe'
$checksum64     = '2555a3e1e3cc18353094782d9e86d50e6331c04d9e61ca729d4fc23c83bb348c'

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
