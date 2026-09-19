$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/770e33f6875c/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-6000.6.2f1.exe'
$checksum64     = '4e7637d008a2a9c2080982732e35dca616e681f4df4bde3673869b70779a4bfe'

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
