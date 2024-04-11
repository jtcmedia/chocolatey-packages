$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/334eb2a0b267/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2022.3.24f1.exe'
$checksum64     = '78c37e8b5569d280e8d7c0010e6a78addc23bc7fe1ba24cf9fae18e45aba0ee3'

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
