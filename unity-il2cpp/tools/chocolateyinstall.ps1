$ErrorActionPreference = 'Stop';

$packageName    = 'unity-il2cpp'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/55b56f0a86e3/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2020.1.12f1.exe'
$checksum64     = '280676d967d0a0a89e2e8ce4a02edcc059ad7b47d66a8076fca57b1a0acb4a0e'

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
