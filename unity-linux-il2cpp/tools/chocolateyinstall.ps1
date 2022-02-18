$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/48b1aa000234/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2021.2.12f1.exe'
$checksum64     = '225fada4b265cf267b4bfaba3c57a4b2013efd05389dd674fa346cd016403f85'

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
