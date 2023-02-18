$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/c9714fde33b6/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2021.3.19f1.exe'
$checksum64     = '93f6a9714a5565a7249f536d2240d00f0d5938b4ee391f9907c572a833258343'

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
