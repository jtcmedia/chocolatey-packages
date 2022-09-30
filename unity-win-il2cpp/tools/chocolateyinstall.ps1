$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/8a091f9adba4/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2022.1.18f1.exe'
$checksum64     = '0f36c3835afc2d4c1781864847e176e73d4abc21dd35ec17fe79e68d03508046'

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
