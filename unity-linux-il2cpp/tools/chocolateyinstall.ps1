$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/3b9dae9532f5/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2021.3.32f1.exe'
$checksum64     = '5565d9bec2531b1563881e48157be5bc2342a894ca11292041dbdee9c99221f3'

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
