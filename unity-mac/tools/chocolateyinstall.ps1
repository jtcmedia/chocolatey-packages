$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/381b4941466e/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2023.2.5f1.exe'
$checksum64     = '340982610ec6c973a27f9f2e971d8006b1c91c3c78db20e4d943de52ba632da2'

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
