$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/27c554a2199c/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-6000.0.27f1.exe'
$checksum64     = '8811fb086eb6e89e56f7cfb9cbccd42be0f3b02ae5ba76e899e3a67db06c4ae7'

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
