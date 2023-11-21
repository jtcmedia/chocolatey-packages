$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/d0d63d039a6f/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-2023.2.0f1.exe'
$checksum64     = '0c61969ba980f3a3ce6f8f39e0048ce54ec75bfa53bfa69d8c290cabed294f95'

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
