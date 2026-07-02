$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/de66c00feac7/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-6000.6.0b2.exe'
$checksum64     = '4db01a9dcae6cf63a773c88f5a7b5b8a21842650e3f7e333b8c1354bdca92037'

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
