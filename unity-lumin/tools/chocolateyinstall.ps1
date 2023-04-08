$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/5ef4f5b5e2d4/TargetSupportInstaller/UnitySetup-Lumin-Support-for-Editor-2020.3.47f1.exe'
$checksum64     = '5ea1c07462fcb4ae181c30329236b4dd7bf714765937fc341f22b0d0a322566d'

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
