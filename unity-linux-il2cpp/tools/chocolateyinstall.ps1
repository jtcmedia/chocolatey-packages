$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/accd6d46ced1/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2023.2.4f1.exe'
$checksum64     = '1b8ee7c64debbd5fe1a124fae603cb088c38ca6bc2b10a5341492f6c645bc1a1'

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
