$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/377f5a9787ef/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-6000.2.0b9.exe'
$checksum64     = 'd25098db679070c0d819980584b20c7d5e257268d4c79a920eda02601d5d1c9b'

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
