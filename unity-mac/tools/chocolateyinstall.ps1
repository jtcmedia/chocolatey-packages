$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/0e25a174756c/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2023.2.20f1.exe'
$checksum64     = '58332dd2558546bd1c6645f5c7d0ef1d06ac70462897313f4bfc640e628d8124'

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
