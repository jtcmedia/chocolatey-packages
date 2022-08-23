$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/ff7e140968b4/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2022.1.14f1.exe'
$checksum64     = '9b15eb1259facee85176b550743d80a0f9d1f5d62c746e899000f40590346208'

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
