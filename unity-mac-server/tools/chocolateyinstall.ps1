$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/c5cbb0b314fa/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-2023.2.15f1.exe'
$checksum64     = '8c1dfadf20f8c1dd93feab370e3ffd962748bda2150cf2f2cc7ef7e0dde2025d'

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
