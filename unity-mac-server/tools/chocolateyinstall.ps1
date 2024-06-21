$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/7dd95c051e11/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-6000.0.7f1.exe'
$checksum64     = '2d2f71c3c6dc6cbad6d3f6d8f5dda3e402bdc15fbce9f4e61501cde26987afa7'

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
