$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/3ca267ce8005/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-6000.4.12f1.exe'
$checksum64     = '2dbdd6b38994f78adfee00b0a77078e6fdb85874050780a9b78a3856f2702c14'

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
