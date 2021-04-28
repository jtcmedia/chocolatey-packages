$ErrorActionPreference = 'Stop';

$packageName    = 'unity-il2cpp'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/3737af19df53/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2021.1.5f1.exe'
$checksum64     = 'f969d8242aeae1b1358dfbdd3bba668c1eae2d6e8da8fdbbaf8eef595206de8d'

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
