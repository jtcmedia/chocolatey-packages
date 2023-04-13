$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/b2c9b1ac6cc0/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-2022.2.14f1.exe'
$checksum64     = '3f0eb062ac82386bf8fd7512bff932b637cd5c8d6bb9f0172e8efdbf784e8fcb'

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
