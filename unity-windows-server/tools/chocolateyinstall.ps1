$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/a206c360e2a8/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-6000.0.31f1.exe'
$checksum64     = 'e61628ed084c10e0b5911039118b65fbee8d9fcce333515e256377d5f799f27b'

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
