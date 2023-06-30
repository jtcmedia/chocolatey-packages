$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/e348e726afe7/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-2023.1.2f1.exe'
$checksum64     = 'da9e65c83a8e67df8bf8b571bd4c4c56a47551726f0f39ceaafa7170a523318e'

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
