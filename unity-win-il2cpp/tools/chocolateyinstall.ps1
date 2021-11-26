$ErrorActionPreference = 'Stop';

$packageName    = 'unity-il2cpp'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/99ba6aa4c552/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2021.2.4f1.exe'
$checksum64     = '7ccf171ed6299e08b95152c412f4a394ac575d1e473a1a0cb4228bf195cf9361'

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
