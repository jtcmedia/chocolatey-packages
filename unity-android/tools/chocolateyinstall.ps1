$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/11fa355cd605/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-6000.0.24f1.exe'
$checksum64     = '15bf05612f7218bf0c19ced7efbe1635023b3d0cf7a0a81d2c55ce4fd5d7e0fe'

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
