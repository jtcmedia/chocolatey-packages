$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/5f5de2657605/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-2022.2.13f1.exe'
$checksum64     = 'd6d38afb41cd1234c3001b5b31aabe9b8802ae326282847490f15c767d109ce4'

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
