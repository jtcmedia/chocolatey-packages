$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/765657fe9343/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2022.2.19f1.exe'
$checksum64     = 'aab9ffb04bc2c4ba85dd73a875eaae02e6128f6b8d2486ceecf497d02d5facf3'

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
