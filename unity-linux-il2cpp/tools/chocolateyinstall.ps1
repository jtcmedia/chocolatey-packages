$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/42973686a05c/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2022.1.15f1.exe'
$checksum64     = 'd92643ed48e774f3dd42b0d0ac9bc70aaf10d2b143f07e3a6c4e7a1229577c41'

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
