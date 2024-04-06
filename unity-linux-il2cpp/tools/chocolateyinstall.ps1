$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/dbb3f7c5b5c6/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2022.3.23f1.exe'
$checksum64     = '2a7032e6b2597f2b6c3bf26e0345bee68efcc15faf32eeb0c7c7c20b1edde32b'

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
