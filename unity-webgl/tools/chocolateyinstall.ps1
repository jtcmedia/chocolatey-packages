$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/915a7af8b0d5/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2020.3.33f1.exe'
$checksum64     = 'ad37f60a494edffd03c90fde3d7ed3dad53f67559a03c4ed222de84d590cdf28'

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
