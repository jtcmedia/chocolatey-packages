$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/5360b7cd7953/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-6000.0.64f1.exe'
$checksum64     = 'c81b0ea94510dc56354996c73160dd467d210a439ebc660fbe2c9ea8f06b90d7'

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
