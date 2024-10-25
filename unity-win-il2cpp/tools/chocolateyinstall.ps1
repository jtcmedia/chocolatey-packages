$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/11fa355cd605/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-6000.0.24f1.exe'
$checksum64     = '37ee351ee01909c310cf18f9e2289bcba99c2e4f30d4d9e1e81b9ab1463ad67d'

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
