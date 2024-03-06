$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/19eeb3b320af/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2023.2.12f1.exe'
$checksum64     = '7e18a37c27f6ba7f7b0641a2397cf5096995d154f08f4a44c40bbd385c02a3c2'

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
