$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/0707b6d1e918/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-6000.2.15f1.exe'
$checksum64     = 'e4b74f9be50d8d96f8e01f5940212c0123e2727727be5c1d2d86a1c8395668e2'

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
