$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/696ec25a53d1/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-6000.3.7f1.exe'
$checksum64     = 'b46ba919745e0cea6718edc05950856de0ea4ec3c8b611ce6813e28f3c9d5bad'

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
