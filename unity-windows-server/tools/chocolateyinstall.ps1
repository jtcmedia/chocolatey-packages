$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/05208a74e9aa/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-6000.0.20f1.exe'
$checksum64     = 'e8dbda74d217c0767e698f364b2f474efb4aab4b9c25a636fe28fa431e5ab2f8'

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
