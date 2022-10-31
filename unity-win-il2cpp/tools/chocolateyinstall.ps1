$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/9ac1ff5ca45b/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2022.1.21f1.exe'
$checksum64     = '67987b261ea35e2bf090237e17526c164adc6dbf1eba881fd35b8f111d7b6ae8'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'EXE'
  url64bit       = $url64
  checksum       = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
