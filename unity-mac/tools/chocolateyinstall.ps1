$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/c8c45dd2de2f/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-6000.5.0b7.exe'
$checksum64     = '786d2ddc329495967efc433bbf787e33658a6fd9fb21b0a3d9617fbd98471e3a'

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
