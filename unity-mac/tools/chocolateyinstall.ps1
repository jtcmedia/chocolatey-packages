$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/3ff58d469c8a/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-6000.6.5f1.exe'
$checksum64     = '5d3381f31263bd2382510f450a079a8fff77def67f98ec6f9c78b278b368a6df'

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
