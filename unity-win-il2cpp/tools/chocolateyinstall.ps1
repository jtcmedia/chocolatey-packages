$ErrorActionPreference = 'Stop';

$packageName    = 'unity-il2cpp'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/923acd2d43aa/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2019.2.10f1.exe'
$checksum64     = '8f6ac6d66a4c2b5e9307d678192c43279c8eedf7fc8aa7d00ca0a19b4eeb6e14'

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
