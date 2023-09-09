$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/38370f5b2257/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-2023.1.12f1.exe'
$checksum64     = '95fde2b97086f962741876b4e02c0d1ea3a8284db90cf6b272b1d30a1dbe800a'

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
