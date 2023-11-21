$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/d0d63d039a6f/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2023.2.0f1.exe'
$checksum64     = '005df3891597fbe7a6251d852f14c11881b59896c191e794644e8cd321ff4e59'

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
