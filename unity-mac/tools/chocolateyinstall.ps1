$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/35a524b12060/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2023.1.20f1.exe'
$checksum64     = '0f4db488ac774fdb8149684710b68d5baa20b193756160f310ccba8b5cf7b085'

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
