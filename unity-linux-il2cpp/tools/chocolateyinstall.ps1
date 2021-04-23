$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/4cd64a618c1b/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2021.1.4f1.exe'
$checksum64     = 'c8c5ae13fd31a0add84e0d387b148986c3b2444f057f9f70656d07f4a17c545f'

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
