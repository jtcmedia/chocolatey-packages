$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/157d81624ddf/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-6000.0.40f1.exe'
$checksum64     = 'e5f628e31792d97cd867f8dff8ece39e6ace263b54c8d7d368af21cb1cfc6a0d'

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
