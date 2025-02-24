$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/faad68ae9e63/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-6000.1.0b7.exe'
$checksum64     = '6a3cefd427fe03e3d1037db484a0d0b58d2dca63a1ada81d902e4d3efcc9578c'

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
