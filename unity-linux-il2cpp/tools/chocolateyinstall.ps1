$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/97272b72f107/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-6000.0.43f1.exe'
$checksum64     = '7d90de75a0b0fc19249652eb5f57835cd2b210898451c5ebff25c1c6c5410869'

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
