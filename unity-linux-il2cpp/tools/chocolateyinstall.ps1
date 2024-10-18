$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/1c4764c07fb4/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-6000.0.23f1.exe'
$checksum64     = '1987b817cd3de92f9ab0d9be075096ff1a51d3ad959c5c054ed710d3c6e0f619'

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
