$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/1c7d0df0160b/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2021.3.10f1.exe'
$checksum64     = '34a68ea527ccfcbabb5f64bc2ea864dd9c068d16d8d9c8f67f1545c7b61117c1'

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
