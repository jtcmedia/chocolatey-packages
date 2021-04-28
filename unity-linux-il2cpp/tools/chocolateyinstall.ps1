$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/3737af19df53/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2021.1.5f1.exe'
$checksum64     = '1db417d7c6020be551e9a0525c2b14f6ca9812403c8f81edb3f1665ad650a77f'

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
