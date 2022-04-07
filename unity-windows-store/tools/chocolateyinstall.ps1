$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/602ecdbb2fb0/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-2021.2.19f1.exe'
$checksum64     = '1722f79b5da4212ec4869ac4b602b520fdaaf05455cd3b3772c47a67c94356d8'

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
