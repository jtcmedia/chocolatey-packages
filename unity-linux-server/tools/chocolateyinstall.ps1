$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/831263a4172c/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-2023.1.15f1.exe'
$checksum64     = 'f7b7e1c6007b8519e4170e4e2f9fa0dda39defab5cda21c2217e9594966fc972'

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
