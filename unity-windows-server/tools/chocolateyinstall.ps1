$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/c36be92430b9/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-6000.0.2f1.exe'
$checksum64     = '0bf7f2e38c01609670d22007eec33ecb2693a290fac72ff9dbb64868533b6e89'

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
