$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/81a3023a9d59/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-6000.5.0b6.exe'
$checksum64     = '2f6e87bad3d9c73a00f6d16f606f219d1738df57b1bddf12770d7a28db0e59ab'

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
