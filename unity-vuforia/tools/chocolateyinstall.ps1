$ErrorActionPreference = 'Stop';

$packageName    = 'unity-vuforia'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/9231f953d9d3/TargetSupportInstaller/UnitySetup-Vuforia-AR-Support-for-Editor-2017.4.1f1.exe'
$checksum64     = '06fe83327bb7e697592f03adb46282308620d2951e3485987beb30a2fdc2c17d'

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
