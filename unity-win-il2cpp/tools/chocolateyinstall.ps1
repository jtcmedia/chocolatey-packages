$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/a008fa768e6c/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2023.1.0f1.exe'
$checksum64     = '869375127289ee6eab6600dab8ca8f0c090693b3039667909b01659c5f716e1f'

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
