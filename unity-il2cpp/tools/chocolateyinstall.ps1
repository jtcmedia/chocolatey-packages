$ErrorActionPreference = 'Stop';

$packageName    = 'unity-il2cpp'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/ceef2d848e70/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2019.3.11f1.exe'
$checksum64     = '6e0ce79e301c4baa139ee6ff6083d8b4d7da4cd231f1db680a4abb0647828905'

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
