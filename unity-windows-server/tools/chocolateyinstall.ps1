$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/95a4219250e5/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-2022.3.36f1.exe'
$checksum64     = '1a5ff2c5486bc2cc0a8d03a3bb99ec75df63220d2cc831226e9b5cb0198d945c'

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
