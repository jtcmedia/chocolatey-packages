$ErrorActionPreference = 'Stop';

$packageName    = 'unity-il2cpp'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/5063218e4ab8/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2018.3.11f1.exe'
$checksum64     = '58929b079d57f8c1174e2b3267853831ebf18ec89bd02c175e1d6b29c7d086d0'

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
