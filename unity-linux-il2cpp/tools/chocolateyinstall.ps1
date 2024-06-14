$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/fb3b7b32f191/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2021.3.39f1.exe'
$checksum64     = '468ec4103ab80d2c183a7231799300845809e96c2dfc4b7e7e78b5c26c914afe'

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
