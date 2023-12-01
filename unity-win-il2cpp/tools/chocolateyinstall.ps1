$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/ee5a2aa03ab2/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2021.3.33f1.exe'
$checksum64     = 'c040f3471b851c9aa76b351b1bd4aa0a22e8c27c288c90f1117fac1f621582ef'

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
