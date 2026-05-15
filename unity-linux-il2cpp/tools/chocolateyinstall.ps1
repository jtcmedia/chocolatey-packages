$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/9be2869246c2/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-6000.5.0b8.exe'
$checksum64     = 'eb6da23cefb7caa6d0dae6ae0e628207b60d87ca71b6bc2c7c7788bffb08c57b'

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
