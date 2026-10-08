$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/3ff58d469c8a/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-6000.6.5f1.exe'
$checksum64     = 'fa13c22a51cf68dd09bf7a60d992f40ac81ba0f76ab1b5c4ade9a0f0a22d784e'

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
