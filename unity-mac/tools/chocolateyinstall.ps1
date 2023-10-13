$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/d00248457e15/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2022.3.11f1.exe'
$checksum64     = '0ba96b243df07589c047100df237e8eeb0d938e3fcc6fd328c60b4546b9dee69'

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
