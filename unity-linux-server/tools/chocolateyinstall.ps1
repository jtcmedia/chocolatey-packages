$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/fbf46ad88f3d/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-2023.1.11f1.exe'
$checksum64     = 'ac66b582fa358f5c9f6d50ebeb1f4e6ece6b995dd4fae04780b2862503ea89a8'

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
