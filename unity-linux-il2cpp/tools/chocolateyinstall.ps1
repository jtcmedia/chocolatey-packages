$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/46620eadcc07/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2023.1.1f1.exe'
$checksum64     = '64776e8dc27819065fe50b1c8f33d0f1f74761f6375b5a5b7db86573ffd30a25'

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
