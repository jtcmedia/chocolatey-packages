$ErrorActionPreference = 'Stop';

$packageName    = 'unity-il2cpp'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/d4ddf0d95db9/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2019.3.13f1.exe'
$checksum64     = 'f0214c7e1ba0908c8324c1db7468593f55f41e50a084faa837633af53691839f'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'EXE'
  url64bit       = $url64
  checksum       = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
