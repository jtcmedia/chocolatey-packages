$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/4e7b9b5b6244/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-6000.3.24f1.exe'
$checksum64     = '16c0366758cf96c8b6ae9362ffe221883fc8029a1b21219afe033acb0a15a7c2'

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
