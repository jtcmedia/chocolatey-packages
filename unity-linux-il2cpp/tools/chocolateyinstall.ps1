$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/602ecdbb2fb0/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2021.2.19f1.exe'
$checksum64     = '89739a68a3752c9ab566015380b46b68077cbf555991d0cf61c8c968ae5e8790'

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
