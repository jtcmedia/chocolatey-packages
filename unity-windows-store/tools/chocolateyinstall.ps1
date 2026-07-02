$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/de66c00feac7/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-6000.6.0b2.exe'
$checksum64     = '7dbe60ce2dadf8d2108fffa0462f73f2056f90a76817b0740631ad9434794432'

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
