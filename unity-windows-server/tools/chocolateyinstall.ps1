$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/1c7d0df0160b/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-2021.3.10f1.exe'
$checksum64     = '45cebf2a70c88ca56ac61bf58559785270afbaa3745b7836d7c5f2524f6800de'

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
