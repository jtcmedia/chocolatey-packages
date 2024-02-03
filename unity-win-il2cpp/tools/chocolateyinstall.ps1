$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/a3bb09f8c8c4/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2023.2.8f1.exe'
$checksum64     = '2a895a0101319c81f5ffe0d1e5c7043fd4e86d720eb68064f61b263e4d3ad98a'

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
