$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/6a96561936c0/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-6000.0.15f1.exe'
$checksum64     = '72e7690fca1e763721c9527c03756e3e76f5dd7851af222cf5d6a05a05b381d9'

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
