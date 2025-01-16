$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/5ab2d9ed9190/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-6000.0.34f1.exe'
$checksum64     = '9d876f77d4a2a0bc18d0530d5623c22617b9933c3d09b4ba7f87cfd66726c4df'

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
