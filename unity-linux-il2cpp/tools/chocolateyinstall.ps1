$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/76dd1f94b339/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2022.1.4f1.exe'
$checksum64     = '7459d567b0a15f68eb91e6048dc54ea0857980aee12fa4094c434272b6f6d30e'

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
