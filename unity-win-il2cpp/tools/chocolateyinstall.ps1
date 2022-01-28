$ErrorActionPreference = 'Stop';

$packageName    = 'unity-il2cpp'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/921b45a28ab6/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2021.2.9f1.exe'
$checksum64     = '208559125f176e855fb17d46fc665e53f4899bf303dfb108d496e5a2910e52ec'

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
