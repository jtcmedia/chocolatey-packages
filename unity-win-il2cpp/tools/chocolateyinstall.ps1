$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/c5cbb0b314fa/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2023.2.15f1.exe'
$checksum64     = '5176b09cf48c16efdc3d3987e67e513184a6faf1bb58d1950b810d03e899dc3c'

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
