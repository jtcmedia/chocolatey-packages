$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/5f90a5ebde0f/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-2022.3.13f1.exe'
$checksum64     = '9e38c7286d4a62b79d07b24b0d6b287f3b01fe9485d463e2f1030df46e306b1b'

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
