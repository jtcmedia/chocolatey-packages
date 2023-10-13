$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/d00248457e15/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-2022.3.11f1.exe'
$checksum64     = 'cf0fdcad464f489806b52784cd6263b6fb0e8a9a9fa1d6011e5a6a5bf45e2f8c'

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
