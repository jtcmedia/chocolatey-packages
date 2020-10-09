$ErrorActionPreference = 'Stop';

$packageName    = 'unity-il2cpp'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/22e8c0b0c3ec/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2020.1.8f1.exe'
$checksum64     = '5af91c4c113c343ecd05b1f4313aa7250c9e7dd929e24e936cfe2e7b7865ce86'

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
