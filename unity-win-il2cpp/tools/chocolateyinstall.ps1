$ErrorActionPreference = 'Stop';

$packageName    = 'unity-il2cpp'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/bbf64de26e34/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2019.2.18f1.exe'
$checksum64     = '3b9b10d3c5b92a755b19ab27e976c13e1ee82c84dad9c414875347e3505feb95'

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
