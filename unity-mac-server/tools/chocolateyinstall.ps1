$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/a3bb09f8c8c4/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-2023.2.8f1.exe'
$checksum64     = 'b1021dc53e7dd06bf9812ec8d467557f2490ac1e34ea5c6b2a5764f04ea18f42'

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
