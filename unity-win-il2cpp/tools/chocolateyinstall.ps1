$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/97272b72f107/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-6000.0.43f1.exe'
$checksum64     = 'eda846c6fe7976a249a9b98a6693678755266fbee5e93eb6e7cd89cad672d2dc'

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
