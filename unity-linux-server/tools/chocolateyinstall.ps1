$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/40eb3a945986/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-2021.3.5f1.exe'
$checksum64     = '7d0b28c7e43ad4f6dcbfa3ac3b6a37e7396ec48995fee33725c183af50bdbd01'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'EXE'
  url64bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
