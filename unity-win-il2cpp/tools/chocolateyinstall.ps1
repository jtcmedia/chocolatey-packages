$ErrorActionPreference = 'Stop';

$packageName    = 'unity-il2cpp'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/f007ed779b7a/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2019.1.10f1.exe'
$checksum64     = '442a13d4a0a138268df86dfaf46eebd5866891aba5a6e66d00f2738cad7d8e8d'

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
