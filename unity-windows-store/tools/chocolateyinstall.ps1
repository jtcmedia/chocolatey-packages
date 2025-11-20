$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/abdb44fca7f7/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-6000.2.13f1.exe'
$checksum64     = '5a084379011e7de7b36183e329765fc402ffe20e9b47e719151ea0e165574113'

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
